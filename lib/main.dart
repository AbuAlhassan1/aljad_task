import 'dart:developer';

import 'package:aljad_task/controllers/auth_controller.dart';
import 'package:aljad_task/controllers/theme_provider.dart';
import 'package:aljad_task/guard.dart';
import 'package:aljad_task/translations/locale_keys.g.dart';
import 'package:aljad_task/views/home/home_page_wapper.dart';
import 'package:aljad_task/views/realestate/realestate_page_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// Use This Command To Generate Transitions
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

final authController = AuthController();

void main() async {

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      path: 'assets/translations',
      startLocale: const Locale('ar', ''),
      fallbackLocale: const Locale('ar', ''),
      child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  static final authController = AuthController();

  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: Guard(
            context: context,
            predicate: (_) => authController.isLoggedIn,
            onFail: (_) => const Scaffold(),
            onPass: (_) => const HomePageWrapper(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'realestate/:index',
            pageBuilder: (context, state) {
              state.params;
              return MaterialPage(
                key: state.pageKey,
                child: const RealEstatePageWrapper()
              );
            },
          ),
        ]
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      )
    ),
  );

  @override
  Widget build(BuildContext context) {
    context.setLocale(const Locale('ar'));
    return ScreenUtilInit(
      designSize: const Size(400, 860),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}