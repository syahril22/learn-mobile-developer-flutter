import 'package:bloc/bloc.dart';

class Counter extends Cubit<int> {
  Counter({this.init = 0}) : super(init);

  int init;

  void increment() => emit(state + 1);
  void decerment() => emit(state - 1);

  // add to information onChange
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  // add to information error
  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
