import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/widgets/app_expansion_tile.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import '../../../logic/hiring_category_cubit/hiring_category_cubit.dart';

class HiringCategories extends StatelessWidget {
  const HiringCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return AppExpansionTile(
      title: "Categories",
      borderRadius: 24.r,
      child: BlocBuilder<HiringCategoryCubit, HiringCategoryState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              AppButton(
                onClicked: () => context
                    .read<HiringCategoryCubit>()
                    .selectHiringCategory(JobsCategory()),
                title: "Jobs",
                variant: state is JobsCategory ? .dark : .surface,
              ),
              Gap(4.w),
              AppButton(
                onClicked: () => context
                    .read<HiringCategoryCubit>()
                    .selectHiringCategory(ArchitectureCategory()),
                title: "Architectures",
                variant: state is ArchitectureCategory ? .dark : .surface,
              ),
              Gap(4.w),
              AppButton(
                onClicked: () => context
                    .read<HiringCategoryCubit>()
                    .selectHiringCategory(ProjectsCategory()),
                title: "Projects",
                variant: state is ProjectsCategory ? .dark : .surface,
              ),
            ],
          );
        },
      ),
    );
  }
}
