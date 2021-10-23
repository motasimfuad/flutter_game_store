import 'package:flutter/material.dart';
import 'package:flutter_game_store/constants/colors.dart';
import 'package:flutter_game_store/modals/game.dart';

class NewestGames extends StatelessWidget {
  NewestGames({Key? key}) : super(key: key);

  List<Game> gameList = Game.generateGames();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: gameList
            .map(
              (e) => Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        e.icon,
                        width: 60,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.type,
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.8),
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  _buildStar(),
                                ],
                              ),
                              _buildButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildStar() {
    List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
      children: color
          .map(
            (e) => Icon(
              Icons.star,
              size: 15,
              color: e,
            ),
          )
          .toList(),
    );
  }

  Widget _buildButton() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Install',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
