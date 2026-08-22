import 'package:equatable/equatable.dart';

class JobEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final double minSalary;
  final double maxSalary;
  final List<String> types;
  final String location;
  final List<String> requirements;
  final List<String> skills;
  final DateTime createdAt;

  const JobEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.minSalary,
    required this.maxSalary,
    required this.types,
    required this.location,
    required this.requirements,
    required this.skills,
    required this.createdAt,
  });

  JobEntity copyWith({
    String? id,
    String? title,
    String? description,
    double? minSalary,
    double? maxSalary,
    List<String>? types,
    String? location,
    List<String>? requirements,
    List<String>? skills,
    DateTime? createdAt,
  }) {
    return JobEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      minSalary: minSalary ?? this.minSalary,
      maxSalary: maxSalary ?? this.maxSalary,
      types: types ?? this.types,
      location: location ?? this.location,
      requirements: requirements ?? this.requirements,
      skills: skills ?? this.skills,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    minSalary,
    maxSalary,
    types,
    location,
    requirements,
    skills,
    createdAt,
  ];
}
