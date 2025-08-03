import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technofit/core/core.dart';
import 'package:technofit/data/data.dart';
import 'package:technofit/di/di.dart';
import 'package:technofit/presentation/presentation.dart';
import 'package:technofit/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await serviceLocator();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final prefs = await SharedPreferences.getInstance();
  initPrefManager(prefs);

  setUrlStrategy(PathUrlStrategy());

  runApp(TechnoFitApp());
}


class TechnoFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<MainCubit>(),
      child: BlocBuilder<MainCubit, DataHelper>(
        builder: (context, data) {
          AppRoute.setStream(context);

          return MaterialApp.router(
            routeInformationProvider: AppRoute.router.routeInformationProvider,
            routeInformationParser: AppRoute.router.routeInformationParser,
            routerDelegate: AppRoute.router.routerDelegate,
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown
              },
            ),
            localizationsDelegates: const [
              Strings.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            builder: (BuildContext context, Widget? child) {
              final MediaQueryData data = MediaQuery.of(context);

              return MediaQuery(
                data: data.copyWith(alwaysUse24HourFormat: true),
                child: child!,
              );
            },
            title: Constants.get.appName,
            theme: themeLight(context),
            darkTheme: themeDark(context),
            locale: Locale(data.type ?? "en"),
            supportedLocales: L10n.all,
            themeMode: data.activeTheme.mode,
          );
        },
      ),
    );
  }
}
