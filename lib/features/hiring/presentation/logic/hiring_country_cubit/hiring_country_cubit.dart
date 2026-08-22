import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/city_entity.dart';
import '../../../domain/entities/country_entity.dart';

part 'hiring_country_state.dart';

class HiringCountryCubit extends Cubit<HiringCountryState> {
  HiringCountryCubit() : super(HiringCountryInitial());

  List<CountryEntity> countries = [
    const CountryEntity(name: 'United States', code: 'US'),
    const CountryEntity(name: 'Canada', code: 'CA'),
    const CountryEntity(name: 'United Kingdom', code: 'GB'),
    const CountryEntity(name: 'Australia', code: 'AU'),
    const CountryEntity(name: 'Germany', code: 'DE'),
    const CountryEntity(name: 'France', code: 'FR'),
    const CountryEntity(name: 'India', code: 'IN'),
  ];

  List<CityEntity> cities = [
    const CityEntity(name: 'New York', countryCode: 'US'),
    const CityEntity(name: 'Los Angeles', countryCode: 'US'),
    const CityEntity(name: 'Chicago', countryCode: 'US'),
    const CityEntity(name: 'Houston', countryCode: 'US'),
    const CityEntity(name: 'Phoenix', countryCode: 'US'),
    const CityEntity(name: 'Philadelphia', countryCode: 'US'),
    const CityEntity(name: 'San Antonio', countryCode: 'US'),
    const CityEntity(name: 'San Diego', countryCode: 'US'),
    const CityEntity(name: 'Dallas', countryCode: 'US'),
    const CityEntity(name: 'San Jose', countryCode: 'US'),
    const CityEntity(name: 'Toronto', countryCode: 'CA'),
    const CityEntity(name: 'Vancouver', countryCode: 'CA'),
    const CityEntity(name: 'Montreal', countryCode: 'CA'),
    const CityEntity(name: 'Calgary', countryCode: 'CA'),
    const CityEntity(name: 'Ottawa', countryCode: 'CA'),
    const CityEntity(name: 'London', countryCode: 'GB'),
    const CityEntity(name: 'Manchester', countryCode: 'GB'),
    const CityEntity(name: 'Birmingham', countryCode: 'GB'),
    const CityEntity(name: 'Liverpool', countryCode: 'GB'),
    const CityEntity(name: 'Leeds', countryCode: 'GB'),
    const CityEntity(name: 'Sydney', countryCode: 'AU'),
    const CityEntity(name: 'Melbourne', countryCode: 'AU'),
    const CityEntity(name: 'Brisbane', countryCode: 'AU'),
    const CityEntity(name: 'Perth', countryCode: 'AU'),
    const CityEntity(name: 'Adelaide', countryCode: 'AU'),
    const CityEntity(name: 'Berlin', countryCode: 'DE'),
    const CityEntity(name: 'Hamburg', countryCode: 'DE'),
    const CityEntity(name: 'Munich', countryCode: 'DE'),
    const CityEntity(name: 'Cologne', countryCode: 'DE'),
    const CityEntity(name: 'Frankfurt', countryCode: 'DE'),
    const CityEntity(name: 'Paris', countryCode: 'FR'),
    const CityEntity(name: 'Marseille', countryCode: 'FR'),
    const CityEntity(name: 'Lyon', countryCode: 'FR'),
    const CityEntity(name: 'Toulouse', countryCode: 'FR'),
    const CityEntity(name: 'Nice', countryCode: 'FR'),
    const CityEntity(name: 'Mumbai', countryCode: 'IN'),
    const CityEntity(name: 'Delhi', countryCode: 'IN'),
    const CityEntity(name: 'Bangalore', countryCode: 'IN'),
    const CityEntity(name: 'Hyderabad', countryCode: 'IN'),
    const CityEntity(name: 'Ahmedabad', countryCode: 'IN'),
  ];

  List<CityEntity> citiesOfSelectedCountry = [];

  void selectCountry(CountryEntity country) {
    citiesOfSelectedCountry = cities
        .where((city) => city.countryCode == country.code)
        .toList();

    emit(HiringCountrySelected(country));
    emit(
      HiringCitySelected(
        citiesOfSelectedCountry.isNotEmpty
            ? citiesOfSelectedCountry.first
            : CityEntity(name: '', countryCode: ''),
      ),
    );
  }

  void selectCity(CityEntity city) {
    emit(HiringCitySelected(city));
  }
}
