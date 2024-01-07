import 'package:bloc_builder/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<Counter, int>(
              bloc: myCounter,
              // properti optional start
              buildWhen: (previous, current) {
                if (current % 2 == 0) {
                  return true;
                } else {
                  return false;
                }
              },
              // properti optional end
              builder: (context, State) {
                return Text('$State', style: const TextStyle(fontSize: 20));
              },
            ),

            // jadi dengan menggunakan package flutter_bloc kita bisa menggubakan blocBuilder dari pada StreamBuilder

            // StreamBuilder(
            //     initialData: myCounter.init,
            //     stream: myCounter.stream,
            //     builder: (context, snapshot) {
            //       return Text(
            //         '${snapshot.data}',
            //         style: const TextStyle(fontSize: 20),
            //       );
            //     }),
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
