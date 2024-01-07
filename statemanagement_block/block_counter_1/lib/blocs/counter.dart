import 'dart:async';

class CounterBloc {
  int _counter = 0;
  int get counter => _counter;

  final StreamController _inputController = StreamController();
  StreamSink get input => _inputController.sink;

  final StreamController _outputController = StreamController();
  StreamSink get _sinkOutput => _outputController.sink;

  Stream get output => _outputController.stream;

  CounterBloc() {
    _inputController.stream.listen((event) {
      if (event == 'add') {
        _counter++;
      } else {
        _counter--;
      }

      _sinkOutput.add(_counter);
    });
  }

  void dispose() {
    _inputController.close();
    _outputController.close();
  }
}
