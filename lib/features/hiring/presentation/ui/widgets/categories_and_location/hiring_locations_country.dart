import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../core/widgets/app_expansion_tile.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import '../../../logic/hiring_country_cubit/hiring_country_cubit.dart';

class HiringLocationsCountry extends StatelessWidget {
  const HiringLocationsCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppExpansionTile(
        title: "Select Country",
        borderRadius: 24.r,
        child: SizedBox(
          height: 120.h,
          child: BlocBuilder<HiringCountryCubit, HiringCountryState>(
            buildWhen: (previous, current) {
              return current is! HiringCitySelected;
            },
            builder: (context, state) {
              return ListView.builder(
                padding: .zero,
                itemCount: context.read<HiringCountryCubit>().countries.length,
                itemBuilder: (context, index) {
                  final country = context
                      .read<HiringCountryCubit>()
                      .countries[index];
                  final isSelected =
                      state is HiringCountrySelected &&
                      state.country == country;
                  return Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: AppButton(
                      onClicked: () {
                        context.read<HiringCountryCubit>().selectCountry(
                          country,
                        );
                      },
                      title: country.name,
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
