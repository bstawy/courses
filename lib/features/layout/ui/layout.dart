import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/assets_manager.dart';
import '../../../core/theme/colors/app_colors.dart';
import '../../presentation/ui/home_screen.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          Center(child: Text('Jobs Screen')),
          Center(child: Text('Galleria Screen')),
          Center(child: Text('Courses Screen')),
          Center(child: Text('Messages Screen')),
        ],
      ),
      bottomNavigationBar: AdaptiveBottomNavigationBar(
        selectedItemColor: AppColors.brightGrey,
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
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
