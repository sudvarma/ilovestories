import 'package:flutter/material.dart';
import 'top5/top5picks.dart';
import 'top10/toppicks.dart';
import 'genre/genresection.dart';
import 'random10/randompicks.dart';
import 'bottom_nav/bottomnavigation.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
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
      body: Center(
          child: CustomScrollView(
        key: UniqueKey(),
        slivers: const <Widget>[
          MyTop5PicksAppBar(),
          MyTop10Picks(),
          StoryGenreSection(),
          Random10Picks()
        ],
      )),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
