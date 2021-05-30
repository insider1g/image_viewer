import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:image_viewer/presentation/screens/images/images_bloc.dart';
import 'package:image_viewer/presentation/screens/images/images_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'di/dependencies.dart';
import 'presentation/core/styles.dart';
import 'presentation/screens/image/image_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => inject<ImagesBloc>()),
          BlocProvider(create: (_) => inject<ImageBloc>()),
        ],
        child: MaterialApp(
            title: 'Pixabay',
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [const Locale('en', '')],
            theme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.lightGreen,
                fontFamily: Fonts.raleway),
            home: ImagesScreen()));
  }
}
