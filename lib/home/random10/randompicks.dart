import 'package:flutter/material.dart';
import '../../story/storypage.dart';
import '../utils/imageutils.dart';

class Random10Picks extends StatelessWidget {
  const Random10Picks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyRandom10List();
  }
}

class MyRandom10List extends StatelessWidget {
  const MyRandom10List({super.key});

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
