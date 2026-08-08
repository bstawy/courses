import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/assets_manager.dart';
import '../../presentation/ui/home_screen.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: HomeScreen(),
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
    );
  }
}
