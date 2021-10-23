import 'package:flutter/material.dart';
import 'package:flutter_game_store/modals/game.dart';
import 'package:flutter_game_store/screens/detail/widgets/detail_sliver_delegate.dart';
import 'package:flutter_game_store/screens/detail/widgets/game_info.dart';

class DetailPage extends StatelessWidget {
  Game game;

  DetailPage(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              rounndedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
      ),
    );
  }
}
