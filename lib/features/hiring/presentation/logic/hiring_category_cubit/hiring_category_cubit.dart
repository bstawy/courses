import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hiring_category_state.dart';

class HiringCategoryCubit extends Cubit<HiringCategoryState> {
  HiringCategoryCubit() : super(JobsCategory());

  void selectHiringCategory(HiringCategoryState category) {
    emit(category);
  }
}
