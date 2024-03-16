import 'package:bloc_counter_app/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter_app/bloc/counter/counter_event.dart';
import 'package:bloc_counter_app/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //counting
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.count.toString(),
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              );
            },
          ),
          // row for inc/dec buttons
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // increment button

              CustomButtons(
                onClicked: () =>
                    context.read<CounterBloc>().add(IncrementCounter()),
                child: const Text("Increment"),
              ),
              const SizedBox(
                width: 20,
              ),
              // decrement button
              CustomButtons(
                onClicked: () =>
                    context.read<CounterBloc>().add(DecrementCounter()),
                child: const Text("Decrement"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  CustomButtons({super.key, required this.onClicked, required this.child});

  void Function()? onClicked;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onClicked, child: child);
  }
}
