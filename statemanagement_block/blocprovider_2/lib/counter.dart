// Cubit
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() => emit(state + 1);
// }

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrementPressed>((event, emit) {
      emit(state - 1);
    });
  }

  // menggunakan function onChange
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  // menggunakan fungction onError
  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
