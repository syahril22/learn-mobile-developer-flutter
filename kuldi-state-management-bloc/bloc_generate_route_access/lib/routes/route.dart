import 'package:bloc_generate_route_access/bloc/counter_bloc.dart';
import 'package:bloc_generate_route_access/pages/404.dart';
import 'package:bloc_generate_route_access/pages/home.dart';
import 'package:bloc_generate_route_access/pages/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
