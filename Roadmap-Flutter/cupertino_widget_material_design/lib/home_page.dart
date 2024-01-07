import 'package:cupertino_widget_material_design/detail_page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Settings'),
          ),
          SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) {
                    bool isTaped = false;
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return GestureDetector(
                          onTapDown: (details) => setState(() {
                            isTaped = true;
                          }),
                          onTapUp: (details) => setState(() {
                            isTaped = false;
                          }),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      DetailPage(title: 'Item $index'),
                                ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                color: isTaped
                                    ? CupertinoColors.white.withOpacity(0.4)
                                    : CupertinoColors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                const Icon(CupertinoIcons.alarm),
                                Text('Item $index'),
                                const Spacer(),
                                const Icon(
                                  CupertinoIcons.forward,
                                  color: CupertinoColors.tertiaryLabel,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}
