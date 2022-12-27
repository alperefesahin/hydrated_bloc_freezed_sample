part of 'counter_cubit.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int number,
  }) = _CounterState;

  const CounterState._();

  factory CounterState.empty() => const CounterState(number: 0);

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      number: map["number"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "number": number,
    };
  }
}
