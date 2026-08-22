part of 'hiring_cubit.dart';

@immutable
sealed class HiringState extends Equatable {
  const HiringState();

  @override
  List<Object> get props => [];
}

final class HiringInitial extends HiringState {}
