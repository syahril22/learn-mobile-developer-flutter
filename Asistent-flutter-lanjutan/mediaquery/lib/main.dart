import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediaquery/mediaquery.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MediaQueryPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MediaQuery"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers(),
              )
            : Row(
                children: generateContainers(),
              ));
  }
}

List<Widget> generateContainers() {
  return [
    Container(
      color: Colors.black,
      height: 200,
      width: 200,
    ),
    Container(
      color: Colors.red,
      height: 200,
      width: 200,
    ),
    Container(
      color: Colors.amber,
      height: 200,
      width: 200,
    ),
  ];
}
