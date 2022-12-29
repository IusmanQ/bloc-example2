import 'package:flutter_bloc/flutter_bloc.dart';
abstract class CounterEvent {}

class IncrementEventPressed extends CounterEvent {}


class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0){
    on<IncrementEventPressed>((event, emit) => emit(state + 1));
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {

    super.onTransition(transition);
    print(transition);
  }

}