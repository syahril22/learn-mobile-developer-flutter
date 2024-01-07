import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/color_provider.dart';

import 'number_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider(
      create: (context) => NumberProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<NumberProvider>(
              builder: (context, numberProvider, child) {
            return Text(numberProvider.number.toString());
          }),
        ),
        body: Center(
          child: Consumer<NumberProvider>(
            builder: (context, numberProvider, child) => Text(
              numberProvider.number.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButtonNew(),
      ),
    ));
  }
}

class FloatingActionButtonNew extends StatelessWidget {
  const FloatingActionButtonNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Provider.of<ColorProvider>(context).themeColor,
      onPressed: () {
        Provider.of<NumberProvider>(context, listen: false).number++;
        // Provider.of<NumberProvider>(context, listen: false).counting++;
        // Provider.of<NumberProvider>(context, listen: false).changeColor();
      },
      child: const Icon(Icons.add),
    );
  }
}
