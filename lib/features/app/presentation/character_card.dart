import 'package:demon_slayer/configurations/configurations.dart';
import 'package:demon_slayer/features/app/data/model/character_model.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.router.push(
          CharacterDetailsRoute(character: character),
        );
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: kPadding * 5,
            left: 0,
            child: SizedBox(
              height: 300 - (kPadding * 4),
              width: 200,
              child: Card(
                elevation: kPadding * 3,
                margin: EdgeInsets.zero,
                color: character.primaryColor,
                shadowColor: character.primaryColor,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 5,
            height: 280,
            child: ShaderMask(
              shaderCallback: (rect) => const LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height),
              ),
              blendMode: BlendMode.dstIn,
              child: Hero(
                tag: character.id,
                child: Image.asset(
                  'assets/images/characters/${character.id}.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: kPadding / 4,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(kPadding),
                  child: Text(
                    character.firstName.toUpperCase(),
                    style: theme.textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: kPadding / 2,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.white70,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kPadding * 2),
                      topRight: Radius.circular(kPadding * 2),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding,
                    vertical: kPadding / 2,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/sword_style_generic.png',
                        height: 30,
                        width: 30,
                        color: character.primaryColor,
                      ),
                      const SizedBox(
                        width: kPadding / 4,
                      ),
                      Text(
                        character.swordStyle,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: character.primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
