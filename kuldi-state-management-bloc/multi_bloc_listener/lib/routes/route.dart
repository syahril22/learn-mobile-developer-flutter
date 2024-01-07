import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_listener/bloc/counter_bloc.dart';
import 'package:multi_bloc_listener/pages/404.dart';
import 'package:multi_bloc_listener/pages/home.dart';
import 'package:multi_bloc_listener/pages/other.dart';

class MyRoute {
  final Counter myCounter = Counter();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: const HomePage(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: const OtherPage(),
          ),
        );

      default:
        return MaterialPageRoute(builder: (context) => const NotfoundPage());
    }
  }
}
