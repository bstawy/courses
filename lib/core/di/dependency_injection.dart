import 'package:get_it/get_it.dart';

import '../../features/hiring/presentation/logic/hiring_category_cubit/hiring_category_cubit.dart';
import '../../features/hiring/presentation/logic/hiring_country_cubit/hiring_country_cubit.dart';
import '../helpers/app_bloc_observer.dart' show AppBlocObserver;

final getIt = GetIt.instance;

void setupGetIt() {
  // BLoc observer
  getIt.registerSingleton<AppBlocObserver>(AppBlocObserver());

  // Hiring
  getIt.registerFactory<HiringCategoryCubit>(() => HiringCategoryCubit());
  getIt.registerFactory<HiringCountryCubit>(() => HiringCountryCubit());
}
