import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/presentation/core/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'image_bloc.dart';
import 'image_state.dart';

class ImageScreen extends StatefulWidget {
  static final transitionDuration = Times.slow;
  static const postTransitionSafeTime = 100;

  final ImageEntity image;

  const ImageScreen({Key key, this.image}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();

  static Route route(ImageEntity image) {
    return PageRouteBuilder(
        transitionDuration: transitionDuration,
        reverseTransitionDuration: transitionDuration,
        pageBuilder: (_, __, ___) => ImageScreen(image: image));
  }
}

class _ImageScreenState extends State<ImageScreen> {
  final _contentAnimationDuration = Times.fast;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<ImageBloc>();
      bloc.scheduleLoadedState(ImageScreen.transitionDuration.inMilliseconds +
          ImageScreen.postTransitionSafeTime);
    });
  }

  Future<void> _preparePrePopState() async {
    final bloc = context.read<ImageBloc>();
    await bloc.setTransitionStateWithPostDelay(
        _contentAnimationDuration.inMilliseconds);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: WillPopScope(
            onWillPop: () async {
              await _preparePrePopState();
              return true;
            },
            child: Hero(
                tag: widget.image.imageUrl,
                child: Material(
                  child: Stack(fit: StackFit.expand, children: [
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: widget.image.imageUrl,
                    ),
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: widget.image.largeImageUrl,
                    ),
                    BlocBuilder<ImageBloc, ImageState>(
                        builder: (context, state) {
                      final isInLoadedState = state == ImageState.loaded();
                      return AnimatedOpacity(
                        opacity: isInLoadedState ? 1 : 0,
                        curve: Curves.easeIn,
                        duration: _contentAnimationDuration,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: SafeArea(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: BackButton(onPressed: () async {
                                      if (isInLoadedState) {
                                        await _preparePrePopState();
                                        Navigator.of(context).pop();
                                      }
                                    })),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: _ImageFooter(image: widget.image),
                            )
                          ],
                        ),
                      );
                    })
                  ]),
                ))));
  }
}

class _ImageFooter extends StatelessWidget {
  const _ImageFooter({Key key, this.image}) : super(key: key);

  final ImageEntity image;

  @override
  Widget build(BuildContext context) {
    final avatarSize = 40.0;
    return FractionallySizedBox(
        alignment: Alignment.bottomCenter,
        heightFactor: 0.1,
        child: Container(
          padding: EdgeInsets.all(Insets.med),
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Insets.med),
                  topRight: Radius.circular(Insets.med))),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: avatarSize,
                    height: avatarSize,
                    child: image.authorImageUrl.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(avatarSize),
                            child: Image.network(image.authorImageUrl,
                                errorBuilder: (_, __, ___) => Icon(
                                    Icons.cancel_rounded,
                                    size: avatarSize)),
                          )
                        : Icon(Icons.cancel_rounded, size: avatarSize)),
                SizedBox(width: Insets.sm),
                Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(image.author,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(AppLocalizations.of(context).tags(image.tags),
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.5)))
                      ]),
                )
              ]),
        ));
  }
}
