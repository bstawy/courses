import 'dart:io';

import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/helpers/assets_manager.dart';
import '../../../core/theme/colors/app_colors.dart';

class Layout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Layout({super.key, required this.navigationShell});

  void _onItemTapped(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color selectedItemColor = (Platform.isIOS)
        ? AppColors.red
        : AppColors.brightGrey;

    return AdaptiveScaffold(
      enableBlur: true,
      minimizeBehavior: TabBarMinimizeBehavior.never,
      body: navigationShell,
      bottomNavigationBar: AdaptiveBottomNavigationBar(
        onTap: _onItemTapped,
        selectedIndex: navigationShell.currentIndex,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: AppColors.carbonBlack,
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
      ),
    );
  }
}
