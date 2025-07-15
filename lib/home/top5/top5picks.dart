import 'package:flutter/material.dart';
import 'package:ilovestories/story/storypage.dart';
import '../utils/imageutils.dart';
import 'dart:async';

class MyTop5PicksAppBar extends StatelessWidget {
  const MyTop5PicksAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.white,
      pinned: false,
      expandedHeight: 600.0,
      flexibleSpace: FlexibleSpaceBar(
        background: MyTop5Picks(),
      ),
    );
  }
}

class MyTop5Picks extends StatefulWidget {
  const MyTop5Picks({super.key});

  @override
  State<MyTop5Picks> createState() => _MyTop5PicksState();
}

class _MyTop5PicksState extends State<MyTop5Picks> {
  int _counter = 1;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer =
        Timer.periodic(const Duration(seconds: 8), (Timer t) => _increment());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _increment() {
    setState(() {
      _counter++;
      if (_counter > 5) _counter = 1;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
      if (_counter < 1) _counter = 1;
    });
  }

  void setCounter(int val) {
    setState(() {
      _counter = val;
      if (_counter < 1 || _counter > 5) _counter = 1;
    });
  }

  void takeToStoryScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyStoryPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.75,
        child: GestureDetector(
          onTap: takeToStoryScreen,
          onLongPressUp: takeToStoryScreen,
          onHorizontalDragEnd: (dragDetail) {
            if (dragDetail.velocity.pixelsPerSecond.dx < 1) {
              _increment();
            } else {
              _decrement();
            }
          },
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 1),
              child: MyTopPickPaintScreen(_counter)),
        ),
      ),
    );
  }
}

class MyTopPickPaintScreen extends StatelessWidget {
  const MyTopPickPaintScreen(this.pickedValue, {super.key});

  final int pickedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [BuildImage(pickedValue), BuildImagePointer(pickedValue)],
    );
  }
}
