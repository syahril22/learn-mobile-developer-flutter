import 'package:flutter/material.dart';
import 'package:jokesapp_responsive/joke.dart';

class DetailJokePage extends StatefulWidget {
  final bool cekDeviceLayout;
  final Joke? joke;
  const DetailJokePage({super.key, required this.cekDeviceLayout, this.joke});

  @override
  State<DetailJokePage> createState() => _DetailJokePageState();
}

class _DetailJokePageState extends State<DetailJokePage> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(widget.joke?.Setup ?? "Joke belum dipilih"),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(widget.joke?.punchline ?? "tidak ada punchline"),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.joke?.type ?? "no selected type"),
      ),
      body: Center(
        child: content,
      ),
      backgroundColor: Colors.orange,
    );
  }
}
