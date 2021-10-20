import 'package:flutter/material.dart';
import 'package:flutter_game_store/constants/colors.dart';
import 'package:flutter_game_store/screens/home/widgets/header.dart';
import 'package:flutter_game_store/screens/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Search(),
          ],
        ),
      ),
    );
  }
}
