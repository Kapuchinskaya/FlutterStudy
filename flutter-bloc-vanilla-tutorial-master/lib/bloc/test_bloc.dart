import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  @override
  TestState get initialState => TestInitial();

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
