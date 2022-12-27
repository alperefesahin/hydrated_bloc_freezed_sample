import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_state.dart';
part 'counter_cubit.freezed.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(CounterState.empty());

  void increaseNumber() {
    emit(state.copyWith(number: state.number + 1));
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toMap();
  }
}
