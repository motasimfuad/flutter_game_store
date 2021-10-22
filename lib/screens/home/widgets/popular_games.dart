import 'package:flutter/material.dart';
import 'package:flutter_game_store/modals/game.dart';

class PopularGames extends StatelessWidget {
  final List<Game> gameLists = Game.generateGames();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 25,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(gameLists[index].bgImg),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: gameLists.length),
    );
  }
}
