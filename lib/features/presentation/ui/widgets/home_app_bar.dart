import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/helpers/assets_manager.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_button_enums.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 16.w,
      title: SvgPicture.asset(AssetsManager.logo),
      actions: [
        AppButton(
          title: "SIGN IN",
          variant: AppButtonVariant.dark,
          prefixWidget: SvgPicture.asset(
            AssetsManager.loginIcon,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onInverseSurface,
              BlendMode.srcIn,
            ),
            height: 20.h,
            width: 20.w,
          ),

          onClicked: () {},
        ),
        Gap(8.w),
        AppIconButton(
          icon: Icons.menu,
          variant: AppIconButtonVariant.outlined,
          onClicked: () {},
        ),
        Gap(16.w),
      ],
    );
  }
}
