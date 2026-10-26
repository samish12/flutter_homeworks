// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}


class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class ChangeFromTextField extends CounterEvent {
  String word;
  ChangeFromTextField({
    required this.word,
  });
}

class ResetTheCounter extends CounterEvent {}