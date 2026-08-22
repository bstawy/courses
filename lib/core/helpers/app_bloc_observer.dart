import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    if (!kReleaseMode) {
      log('${bloc.runtimeType}', name: '🟢 Bloc/Cubit Created');
    }
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (!kReleaseMode) {
      log('${bloc.runtimeType}', name: '🔄 State Changed');
      log(
        'Previous State: ${change.currentState}',
        name: '⏪ ${bloc.runtimeType}',
      );
      log('Current State: ${change.nextState}', name: '⏩ ${bloc.runtimeType}');
    }
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (!kReleaseMode) {
      log('${bloc.runtimeType}, $error', name: '❌ Error');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    if (!kReleaseMode) {
      log('${bloc.runtimeType}', name: '🛑 Bloc/Cubit Closed');
    }
    super.onClose(bloc);
  }
}
