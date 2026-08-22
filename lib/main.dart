import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/app_bloc_observer.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme/app_theme.dart';

void main() {
  setupGetIt();
  Bloc.observer = getIt<AppBlocObserver>();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Courses',
          theme: AppTheme.lightThemeData,
          darkTheme: AppTheme.darkThemeData,
          themeMode: .system,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
