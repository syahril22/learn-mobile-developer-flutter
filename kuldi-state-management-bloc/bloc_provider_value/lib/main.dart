import 'package:bloc_provider_value/bloc/counter_bloc.dart';
import 'package:bloc_provider_value/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          BlocProvider(create: (context) => Counter(), child: const HomePage()),
    );
  }
}
