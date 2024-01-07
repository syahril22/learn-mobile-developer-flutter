class Joke {
  final int id;
  final String type;
  final String Setup;
  final String punchline;

  Joke(
      {required this.id,
      required this.type,
      required this.Setup,
      required this.punchline});
}

final List<Joke> jokesList = [
  Joke(
      id: 1,
      type: "General",
      Setup: "How do you make a tissue dance?",
      punchline: "Damn"),
  Joke(
      id: 2,
      type: "General",
      Setup: "What's forrest gump's password?",
      punchline: "1Foreest1"),
  Joke(
      id: 3,
      type: "General",
      Setup: "How do you make a tissue dance?",
      punchline: "Damn"),
  Joke(
      id: 4,
      type: "General",
      Setup: " you make a tissue dance?",
      punchline: "Damnhdkjhka"),
];
