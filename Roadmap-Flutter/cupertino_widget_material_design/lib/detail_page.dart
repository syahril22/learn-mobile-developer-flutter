import 'package:flutter/cupertino.dart';

class DetailPage extends StatelessWidget {
  final String title;
  const DetailPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
          previousPageTitle: 'Settings',
        ),
        child: Center(child: Text('Welcome to Detail Page $title')));
  }
}
