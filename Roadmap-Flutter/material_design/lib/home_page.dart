import 'package:flutter/material.dart';
import 'package:material_design/app_bar.dart';
import 'package:material_design/card.dart';
import 'package:material_design/container.dart';
import 'package:material_design/listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material Design'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  CustomeButton(
                    buttonText: 'AppBar',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AppBarPage()));
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomeButton(
                    buttonText: 'Container',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContainerPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomeButton(
                    buttonText: 'Listview',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListViewPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomeButton(
                    buttonText: 'Card',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class CustomeButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomeButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 48),
        ),
      ),
      child: Text(buttonText),
    );
  }
}
