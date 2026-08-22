import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hiring_state.dart';

class HiringCubit extends Cubit<HiringState> {
  HiringCubit() : super(HiringInitial());
}
