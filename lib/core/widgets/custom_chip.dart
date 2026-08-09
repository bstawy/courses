import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../extension/theme_ext.dart';

class CustomChip extends StatelessWidget {
  final String label;
  const CustomChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: .symmetric(horizontal: 16.w, vertical: 4.h),
      backgroundColor: context.colors.primary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
      side: BorderSide(color: Colors.transparent, width: 0.w),
      label: Text(label),
      labelStyle: TextStyle(color: context.colors.primary),
      labelPadding: .zero,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      
    );
  }
}
