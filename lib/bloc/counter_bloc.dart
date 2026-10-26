import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  CounterBloc() : super(CounterInitial()) {
    on<Increment>((event, emit) {
      counter++;
      emit(TheCounterHasBeenEditied(counter: counter));
    });

    on<Decrement>((event, emit) {
      if (counter <= 0) {
        emit(
          BadUserBehavior(
            message: "Please Stop , We can't be under the zero or we will die",
          ),
        );
      } else {
        counter--;
        emit(TheCounterHasBeenEditied(counter: counter));
      }
    });

    on<ResetTheCounter>((event, emit) {
      counter = 0;
      emit(CounterInitial());
    });

    on<ChangeFromTextField>((event, emit) {
      if (event.word.isEmpty) {
        emit(BadUserBehavior(message: "You don't enter anything Lkk Hjeee"));
      }
      int? counterTemp = int.tryParse(event.word);
      if (counterTemp == null) {
        emit(
          BadUserBehavior(
            message:
                "Please Look before you write , You Must Enter Numbers Only",
          ),
        );
      } else {
        counter = counterTemp;
        emit(TheCounterHasBeenEditied(counter: counter));
      }
    });
  }
}
