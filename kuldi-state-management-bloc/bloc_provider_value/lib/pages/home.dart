import 'package:bloc_provider_value/bloc/counter_bloc.dart';
import 'package:bloc_provider_value/pages/data_widget.dart';
import 'package:bloc_provider_value/pages/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Use Bloc Provider Value',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  myCounter.decerment();
                },
                borderRadius: BorderRadius.circular(15),
                child: const SizedBox(
                  height: 100,
                  width: 70,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.amber,
              child: const DataWidget(),
            ),
            Material(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  myCounter.increment();
                },
                borderRadius: BorderRadius.circular(15),
                child: const SizedBox(
                  height: 100,
                  width: 70,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                  value: myCounter,
                  child: const OtherPage(),
                ),
              ));
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.forward,
          color: Colors.black,
        ),
      ),
    );
  }
}
