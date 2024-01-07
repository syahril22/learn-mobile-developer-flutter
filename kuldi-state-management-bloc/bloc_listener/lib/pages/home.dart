import 'package:bloc_listener/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Bloc Listener'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocListener<Counter, int>(
              bloc: myCounter,
              listener: ((context, state) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Data Sudah Mencapai 5')));
              }),
              listenWhen: (previous, current) {
                if (current == 5) {
                  return true;
                } else {
                  return false;
                }
              },
              child: BlocBuilder<Counter, int>(
                bloc: myCounter,
                builder: (context, state) {
                  return Text('$state', style: const TextStyle(fontSize: 20));
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      myCounter.decerment();
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      myCounter.increment();
                    },
                    icon: const Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
