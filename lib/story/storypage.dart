import 'package:flutter/material.dart';
import '../home/bottom_nav/bottomnavigation.dart';
import '../home/utils/imageutils.dart';

class MyStoryPage extends StatelessWidget {
  const MyStoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('images/ilovestories_logo_2.png',
            fit: BoxFit.fitHeight),
        centerTitle: true,
      ),
      body: DefaultTextStyle.merge(
          style: const TextStyle(fontSize: 34, fontStyle: FontStyle.italic),
          child: Center(
              child: CustomScrollView(
            key: UniqueKey(),
            slivers: const <Widget>[
              DetailedStory(),
            ],
          ))),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

class DetailedStory extends StatelessWidget {
  const DetailedStory({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      PageEqualLeftRightTemplate(),
      Divider(
        height: 13,
      ),
      PageEqualTopDownTemplate(),
      Divider(
        height: 13,
      ),
      PageEqualRightLeftTemplate(),
      Divider(
        height: 13,
      ),
      PageEqualTopRightLeftTemplate(),
      Divider(
        height: 13,
      ),
      PageEqualTopLeftRightTemplate(),
      Divider(
        height: 13,
      ),
      PageEqualDownTopTemplate(),
    ];

    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed(pages),
      ),
    );
  }
}

class PageEqualLeftRightTemplate extends StatelessWidget {
  const PageEqualLeftRightTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 600.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            BuildImage(1),
            Flexible(
                child: Text('detailed story on acheiving a zero in zero out.'))
          ],
        ),
      ),
    );
  }
}

class PageEqualRightLeftTemplate extends StatelessWidget {
  const PageEqualRightLeftTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 600.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Flexible(
                child: Text('detailed story on acheiving a zero in zero out.')),
            BuildImage(1),
          ],
        ),
      ),
    );
  }
}

class PageEqualTopDownTemplate extends StatelessWidget {
  const PageEqualTopDownTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 600.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
                'detailed story on acheiving a zero in zero out. there by getting zero out zero in ;) Wow! zero out zero in!'),
            Flexible(child: BuildImage(1)),
          ],
        ),
      ),
    );
  }
}

class PageEqualDownTopTemplate extends StatelessWidget {
  const PageEqualDownTopTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 600.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Flexible(child: BuildImage(1)),
            Text(
                'detailed story on acheiving a zero in zero out. there by getting zero out zero in ;)'),
          ],
        ),
      ),
    );
  }
}

class PageEqualTopLeftRightTemplate extends StatelessWidget {
  const PageEqualTopLeftRightTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 600.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Flexible(
                child: Text('detailed story on acheiving a zero in zero out.')),
            BuildImage(1),
          ],
        ),
      ),
    );
  }
}

class PageEqualTopRightLeftTemplate extends StatelessWidget {
  const PageEqualTopRightLeftTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 600.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BuildImage(1),
            Flexible(
                child: Text('detailed story on acheiving a zero in zero out.')),
          ],
        ),
      ),
    );
  }
}
