import 'package:flutter/material.dart';
import 'package:jokesapp_responsive/detail_joke_page.dart';
import 'package:jokesapp_responsive/joke.dart';
import 'package:jokesapp_responsive/list_joke.dart';

class AdaptivePage extends StatefulWidget {
  const AdaptivePage({super.key});

  @override
  State<AdaptivePage> createState() => _AdaptivePageState();
}

class _AdaptivePageState extends State<AdaptivePage> {
  Joke? jokeChoice;

  Widget buildNoTablet() {
    return ListJoke(chooseJokeCallback: (choices) {
      var route = MaterialPageRoute(builder: (context) {
        return DetailJokePage(
          cekDeviceLayout: false,
          joke: choices,
        );
      });
      Navigator.push(context, route);
    });
  }

  Widget buildTablet() {
    return Row(
      children: [
        Flexible(
            child: Material(
          elevation: 16,
          child: ListJoke(
            chooseJokeCallback: (choices) {
              setState(() {
                jokeChoice = choices;
              });
            },
          ),
        )),
        Flexible(
          child: DetailJokePage(
            cekDeviceLayout: true,
            joke: jokeChoice,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;

    var screenSize = MediaQuery.of(context).size.shortestSide;
    var screenOrientation = MediaQuery.of(context).orientation;

    if (screenOrientation == Orientation.portrait && screenSize < 600) {
      content = buildNoTablet();
    } else {
      content = buildTablet();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Joke App"),
        backgroundColor: Colors.orange,
      ),
      body: content,
    );
  }
}
