import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Submit")),
          ),
        ),
      ),
    );
  }
}
