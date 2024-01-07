import 'package:api_post_kuldiproject/pages/home_get_stateful.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeStatefulGet(),
    );
  }
}
