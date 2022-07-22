import 'package:bloc_rxdart/bloc.dart';
import 'package:rxdart/rxdart.dart';

class CounterBloc extends Bloc {
  late int initialCount;
  late BehaviorSubject<int> _subjectCounter;
  CounterBloc({
    this.initialCount = 0,
  }) {
    _subjectCounter = BehaviorSubject<int>.seeded(initialCount); //initializes the subject with element already
  }

  ValueStream<int> get counterValueStream => _subjectCounter.stream;
  Sink<int> get counterSink => _subjectCounter.sink;
  void increment() {
    initialCount++;
    counterSink.add(initialCount);
  }

  void decrement() {
    initialCount--;
    counterSink.add(initialCount);
  }

  @override
  void dispose() {
    _subjectCounter.close();
  }

  void test(int y, {int? i}) {
    print('test $i');
  }
}
