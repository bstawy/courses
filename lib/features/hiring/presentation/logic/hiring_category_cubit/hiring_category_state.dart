part of 'hiring_category_cubit.dart';

sealed class HiringCategoryState extends Equatable {
  const HiringCategoryState();

  @override
  List<Object> get props => [];
}

final class JobsCategory extends HiringCategoryState {}

final class ArchitectureCategory extends HiringCategoryState {}

final class ProjectsCategory extends HiringCategoryState {}
