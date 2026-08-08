import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';

import 'core/helpers/assets_manager.dart';
import 'core/theme/app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      themeMode: ThemeMode.system,
      home: AdaptiveScaffold(
        bottomNavigationBar: AdaptiveBottomNavigationBar(
          useNativeBottomBar: true,
          selectedItemColor: Colors.red,
          items: [
            AdaptiveNavigationDestination(
              icon: AssetImage(AssetsManager.homeOutlinedIcon),
              selectedIcon: AssetImage(AssetsManager.homeFilledIcon),
              label: 'Home',
            ),
            AdaptiveNavigationDestination(
              icon: AssetImage(AssetsManager.jobsOutlinedIcon),
              selectedIcon: AssetImage(AssetsManager.jobsFilledIcon),
              label: 'Jobs',
            ),
            AdaptiveNavigationDestination(
              icon: AssetImage(AssetsManager.galleriaOutlinedIcon),
              selectedIcon: AssetImage(AssetsManager.galleriaFilledIcon),
              label: 'Galleria',
            ),
            AdaptiveNavigationDestination(
              icon: AssetImage(AssetsManager.coursesOutlinedIcon),
              selectedIcon: AssetImage(AssetsManager.coursesFilledIcon),
              label: 'Courses',
            ),
            AdaptiveNavigationDestination(
              icon: AssetImage(AssetsManager.messagesOutlinedIcon),
              selectedIcon: AssetImage(AssetsManager.messagesFilledIcon),
              label: 'Messages',
            ),
          ],
          selectedIndex: 0,
          onTap: (index) {},
        ),
        body: const Center(child: Text('Welcome to the Courses App!')),
      ),
    );
  }
}
