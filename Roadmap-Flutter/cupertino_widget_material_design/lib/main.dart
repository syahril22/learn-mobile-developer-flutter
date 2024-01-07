import 'package:cupertino_widget_material_design/home_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: CupertinoThemeData(
          primaryColor: CupertinoColors.activeOrange,
          scaffoldBackgroundColor: CupertinoColors.extraLightBackgroundGray),
    );
  }
}
