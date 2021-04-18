abstract class CounterEvent {
  void DoTest();
}

class IncrementEvent extends CounterEvent {
  @override
  void DoTest() {
    123
  }
}

class DecrementEvent extends CounterEvent {
  @override
  void DoTest() {
    12324444
  }
}
