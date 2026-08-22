import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../core/widgets/app_expansion_tile.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import '../../../logic/hiring_country_cubit/hiring_country_cubit.dart';

class HiringLocationsCity extends StatelessWidget {
  const HiringLocationsCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppExpansionTile(
        title: "Select City",
        borderRadius: 24.r,
        child: SizedBox(
          height: 120.h,
          child: BlocBuilder<HiringCountryCubit, HiringCountryState>(
            builder: (context, state) {
              return ListView.builder(
                padding: .zero,
                itemCount: context
                    .read<HiringCountryCubit>()
                    .citiesOfSelectedCountry
                    .length,
                itemBuilder: (context, index) {
                  final city = context
                      .read<HiringCountryCubit>()
                      .citiesOfSelectedCountry[index];
                  final isSelected =
                      state is HiringCitySelected && state.city == city;
                  return Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: AppButton(
                      onClicked: () {
                        context.read<HiringCountryCubit>().selectCity(city);
                      },
                      title: city.name,
                      variant: isSelected ? .dark : .surface,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
