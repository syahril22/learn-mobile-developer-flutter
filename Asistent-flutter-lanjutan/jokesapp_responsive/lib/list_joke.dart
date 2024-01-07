import 'package:flutter/material.dart';
import 'package:jokesapp_responsive/joke.dart';

class ListJoke extends StatefulWidget {
  final Joke? jokeChoices;
  final ValueChanged<Joke> chooseJokeCallback;

  const ListJoke(
      {super.key, this.jokeChoices, required this.chooseJokeCallback});

  @override
  State<ListJoke> createState() => _ListJokeState();
}

class _ListJokeState extends State<ListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jokesList.map((jokes) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ListTile(
            title: Text(
              jokes.Setup,
              style: const TextStyle(color: Colors.black),
            ),
            onTap: () => widget.chooseJokeCallback(jokes),
            selected: widget.jokeChoices == jokes,
          ),
        );
      }).toList(),
    );
  }
}
