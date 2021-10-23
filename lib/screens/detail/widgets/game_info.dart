import 'package:flutter/material.dart';
import 'package:flutter_game_store/modals/game.dart';
import 'package:flutter_game_store/screens/detail/widgets/game_header.dart';

class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GameHeader(game),
        ],
      ),
    );
  }
}
