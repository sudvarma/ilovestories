import 'package:flutter/material.dart';

class StoryGenreSection extends StatelessWidget {
  const StoryGenreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            int index_1 = (index + 1);
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/genre_$index_1.png'),
                ),
              ),
            );
          },
          childCount: 4,
        ),
      ),
    );
  }
}
