import 'package:demon_slayer/configurations/configurations.dart';
import 'package:demon_slayer/features/app/app.dart';
import 'package:flutter/material.dart';

class CharacterGrid extends StatelessWidget {
  const CharacterGrid({Key? key, required this.characters}) : super(key: key);

  final List<Character> characters;

  @override
  Widget build(BuildContext context) => GridView.builder(
    shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          top: kPadding,
          bottom: kPadding * 5,
          left: kPadding,
          right: kPadding,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: kPadding * 2,
        ),
        itemBuilder: (context, index) => CharacterCard(
          character: characters[index],
        ),
        itemCount: characters.length,
      );
}
