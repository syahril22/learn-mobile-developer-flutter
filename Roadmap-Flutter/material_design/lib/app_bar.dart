import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: const Text('AppBar Example'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff0096ff),
                  Color(0xff6610f2),
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
            // image: DecorationImage(
            //     image: AssetImage('images/corak_image.jpg'),
            //     fit: BoxFit.none,
            //     repeat: ImageRepeat.repeat),
          ),
        ),
      ),
    );
  }
}
