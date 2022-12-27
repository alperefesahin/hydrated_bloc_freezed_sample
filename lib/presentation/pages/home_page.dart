import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc_sample/application/counter/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().increaseNumber();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text('Hydrated Bloc'),
          ),
          body: Center(
            child: Text(state.number.toString()),
          ),
        );
      },
    );
  }
}
