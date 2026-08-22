part of 'hiring_country_cubit.dart';

sealed class HiringCountryState extends Equatable {
  const HiringCountryState();

  @override
  List<Object> get props => [];
}

final class HiringCountryInitial extends HiringCountryState {}

final class HiringCountrySelected extends HiringCountryState {
  final CountryEntity country;

  const HiringCountrySelected(this.country);

  @override
  List<Object> get props => [country];
}

final class HiringCitySelected extends HiringCountryState {
  final CityEntity city;

  const HiringCitySelected(this.city);

  @override
  List<Object> get props => [city];
}
