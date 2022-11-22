import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A chatty observer that prints info about BLOCs.
class ChattyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint('${bloc.runtimeType}.onCreate');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('${bloc.runtimeType}.onEvent event=$event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('${bloc.runtimeType}.onChange change=$change');
  }
}
