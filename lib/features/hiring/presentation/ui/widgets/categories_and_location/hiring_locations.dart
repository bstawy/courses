import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../core/widgets/app_expansion_tile.dart';
import 'hiring_locations_city.dart';
import 'hiring_locations_country.dart';

class HiringLocations extends StatelessWidget {
  const HiringLocations({super.key});

  @override
  Widget build(BuildContext context) {
    return AppExpansionTile(
      title: "Location",
      borderRadius: 24.r,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: [HiringLocationsCountry(), HiringLocationsCity()],
      ),
    );
  }
}
