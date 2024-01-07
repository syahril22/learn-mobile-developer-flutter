import 'package:extension_method/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc myCounter = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extension Method'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: const TextStyle(fontSize: 35),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    myCounter.remove();
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    myCounter.add();
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
