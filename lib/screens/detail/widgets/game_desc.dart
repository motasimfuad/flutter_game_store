import 'package:flutter/material.dart';
import 'package:flutter_game_store/constants/colors.dart';
import 'package:flutter_game_store/modals/game.dart';
import 'package:readmore/readmore.dart';

class GameDesc extends StatelessWidget {
  final Game game;
  const GameDesc(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        game.desc,
        trimLines: 2,
        colorClickableText: kPrimary,
        trimCollapsedText: 'more',
        trimExpandedText: 'less',
        trimMode: TrimMode.Line,
        style: TextStyle(
          color: Colors.grey.withOpacity(0.7),
          height: 1.5,
        ),
      ),
    );
  }
}
