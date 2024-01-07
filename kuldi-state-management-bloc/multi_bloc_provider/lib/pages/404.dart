import 'package:flutter/material.dart';

class NotfoundPage extends StatelessWidget {
  const NotfoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 400,
          color: Colors.amber,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '404 NOT FOUND',
                style: TextStyle(fontSize: 30),
              ),
              Text('Page tidak di Temukan')
            ],
          ),
        ),
      ),
    );
  }
}
