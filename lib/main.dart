import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'core/theme/app_theme/app_theme.dart';
import 'features/layout/ui/layout.dart';

void main() {
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Courses',
          theme: AppTheme.lightThemeData,
          darkTheme: AppTheme.darkThemeData,
          themeMode: .system,
          home: child,
        );
      },
      child: const Layout(),
    );
  }
}
