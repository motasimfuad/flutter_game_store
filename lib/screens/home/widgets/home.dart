import 'package:flutter/material.dart';
import 'package:flutter_game_store/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimary,
      body: Text('home page'),
    );
  }
}
