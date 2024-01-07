import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        color: Colors.blueAccent,
        margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
        padding: const EdgeInsets.only(bottom: 20, top: 20),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.blue],
            ),
            // image: const DecorationImage(
            //     image: AssetImage('images/corak_image.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
