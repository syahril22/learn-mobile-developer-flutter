import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_listener/bloc/theme.dart';
import 'package:multi_bloc_listener/routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final route = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
        builder: (context, state) {
          return MaterialApp(
            theme: state == true ? ThemeData.light() : ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: route.onRoute,
          );
        },
      ),
    );
  }
}
