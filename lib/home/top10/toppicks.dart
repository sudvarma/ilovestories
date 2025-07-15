import 'package:flutter/material.dart';
import 'package:ilovestories/story/storypage.dart';
import '../utils/imageutils.dart';

class MyTop10Picks extends StatelessWidget {
  const MyTop10Picks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyTop10List();
  }
}

class MyTop10List extends StatelessWidget {
  const MyTop10List({super.key});

  void takeToStoryScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyStoryPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => takeToStoryScreen(context),
              child: SizedBox(
                height: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BuildImage(index % 5),
                    const Flexible(child: Text('my favourite tech mokey'))
                  ],
                ),
              ),
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}
