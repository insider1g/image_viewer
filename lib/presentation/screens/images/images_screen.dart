import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/presentation/common/pageable_scroll_controller.dart';
import 'package:image_viewer/presentation/common/widgets/icon_with_text.dart';
import 'package:image_viewer/presentation/common/widgets/search_bottom_sheet.dart';
import 'package:image_viewer/presentation/core/styles.dart';
import 'package:image_viewer/presentation/screens/image/image_screen.dart';
import 'package:image_viewer/presentation/screens/images/images_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

import 'images_state.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({Key key}) : super(key: key);

  @override
  _ImagesScreenState createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  final PageableScrollController _scrollController =
      PageableScrollController(threshold: 500.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<ImagesBloc>();
      _scrollController.setOnRefreshListener(bloc.safeFetch);
      bloc.safeFetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async => _showSearchSheet(context),
          child: const Icon(Icons.search),
        ),
        body: CustomScrollView(controller: _scrollController, slivers: [
          const SliverAppBar(
            title: const Text('Pixabay',
                style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
            floating: true,
          ),
          BlocBuilder<ImagesBloc, ImagesState>(
              builder: (context, state) => state.when(
                  loading: () => const _SliverProgressIndicator(),
                  content: (images, _) => _SliverImagesGrid(images: images),
                  empty: () => const _SliverNotFoundIconText(),
                  error: (failure) => _SliverErrorIconText(failure: failure))),
          BlocBuilder<ImagesBloc, ImagesState>(
              builder: (context, state) => state.maybeWhen(
                  content: (_, endReached) => endReached
                      ? const _SliverEmptyBox()
                      : const _SliverProgressIndicator(),
                  orElse: () => const _SliverEmptyBox()))
        ]));
  }

  Future<void> _showSearchSheet(BuildContext context) async {
    final bloc = context.read<ImagesBloc>();
    final currentKeyword = bloc.getCurrentKeyword();
    final newKeyword = await SearchBottomSheet.show(
        context, text: currentKeyword);
    bloc.search(newKeyword);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class _ImageView extends StatelessWidget {
  final ImageEntity image;

  const _ImageView({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => Navigator.of(context).push(ImageScreen.route(image)),
      child: Hero(
        tag: image.imageUrl,
        child: FadeInImage(
            fadeInDuration: Times.fast,
            placeholder: MemoryImage(kTransparentImage),
            image: CachedNetworkImageProvider(image.imageUrl),
            fit: BoxFit.cover),
      ),
    );
  }
}

class _SliverImagesGrid extends StatelessWidget {
  final List<ImageEntity> images;

  const _SliverImagesGrid({Key key, this.images}) : super(key: key);

  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (_, index) => _ImageView(image: images[index]),
            childCount: images.length),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1));
  }
}

class _SliverProgressIndicator extends StatelessWidget {
  const _SliverProgressIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 4));
  }
}

class _SliverNotFoundIconText extends StatelessWidget {
  const _SliverNotFoundIconText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: IconText(
          icon: Icons.error, text: AppLocalizations.of(context).imagesNotFound),
    );
  }
}

class _SliverErrorIconText extends StatelessWidget {
  final Failure failure;
  const _SliverErrorIconText({Key key, this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: IconText(
          icon: Icons.error,
          text: failure.when(
              network: () => AppLocalizations.of(context).networkError,
              unauthorized: () => AppLocalizations.of(context).authError,
              unhandled: (exception) => exception.toString())),
    );
  }
}

class _SliverEmptyBox extends StatelessWidget {
  const _SliverEmptyBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter();
  }
}
