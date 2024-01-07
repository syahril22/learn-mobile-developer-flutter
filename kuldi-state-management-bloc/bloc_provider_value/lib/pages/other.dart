import 'package:bloc_provider_value/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = context.read();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Provider Value',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: BlocBuilder<Counter, int>(
        bloc: myCounter,
        builder: (context, state) {
          return Center(
            child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    '$state',
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                )),
          );
        },
      ),
    );
  }
}
