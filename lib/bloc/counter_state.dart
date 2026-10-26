// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

// class TheCounterHasBeenIncrease extends CounterState {
//   int counter;
//   TheCounterHasBeenIncrease({
//     required this.counter,
//   });
// }
// class TheCounterHasBeenDecrease extends CounterState {
//   int counter;
//    TheCounterHasBeenDecrease({
//     required this.counter,
//   });
// }

// TODO: The Counter Has Been Editied
class TheCounterHasBeenEditied extends CounterState {
  int counter;
  TheCounterHasBeenEditied({
    required this.counter,
  });
}

class BadUserBehavior extends CounterState {
  String message;
  BadUserBehavior({
    required this.message,
  });
}
