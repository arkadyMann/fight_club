import 'package:flutter/material.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';

import '../fight_result.dart';
import '../pages/fight_page.dart';
import '../resources/fight_club_images.dart';

class FightResultWidget extends StatelessWidget {
  final FightResult fightResult;

  const FightResultWidget({
    Key? key,
    required this.fightResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ColoredBox(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, FightClubColors.darkPurple]),
                  ),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: FightClubColors.darkPurple,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    "You",
                    style: TextStyle(
                      color: FightClubColors.darkGreyText,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(FightClubImages.youAvatar, width: 92, height: 92),
                ],
              ),
              Container(
                height: 44,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: fightResult.color,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: Text(
                    fightResult.result.toLowerCase(),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    "Enemy",
                    style: TextStyle(
                      color: FightClubColors.darkGreyText,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(FightClubImages.enemyAvatar,
                      width: 92, height: 92),
                ],
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
    ;
  }
}