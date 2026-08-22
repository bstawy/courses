import 'package:equatable/equatable.dart';

class CityEntity extends Equatable {
  final String name;
  final String countryCode;

  const CityEntity({required this.name, required this.countryCode});

  @override
  List<Object> get props => [name, countryCode];
}
