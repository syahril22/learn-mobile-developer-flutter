import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final List<IconData> _iconsCard = [
    Icons.home,
    Icons.android,
    Icons.settings,
    Icons.person,
    Icons.home,
    Icons.android,
    Icons.settings,
    Icons.person,
    Icons.home,
    Icons.android,
    Icons.settings,
    Icons.person,
    Icons.home,
    Icons.android,
    Icons.settings,
    Icons.person,
    Icons.home,
    Icons.android,
    Icons.settings,
    Icons.person,
    Icons.home,
    Icons.android,
    Icons.settings,
    Icons.person,
  ];

  final List _nameCard = [
    'Home',
    'Phone',
    'Settings',
    'Profile',
    'Home',
    'Phone',
    'Settings',
    'Profile',
    'Home',
    'Phone',
    'Settings',
    'Profile',
    'Home',
    'Phone',
    'Settings',
    'Profile',
    'Home',
    'Phone',
    'Settings',
    'Profile',
    'Home',
    'Phone',
    'Settings',
    'Profile'
  ];
  CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
        ),
        itemCount: _nameCard.length,
        itemBuilder: (context, index) {
          return CardWidgets(
              iconCard: _iconsCard[index], nameCard: _nameCard[index]);
        },
      ),
    );
  }
}

class CardWidgets extends StatelessWidget {
  final IconData iconCard;
  final String nameCard;
  const CardWidgets(
      {super.key, required this.iconCard, required this.nameCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0, // sejauh mana card di angkat
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconCard,
                size: 50,
                // color: Colors.blueAccent,
              ),
              Text(
                nameCard,
                style: const TextStyle(fontSize: 17.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
