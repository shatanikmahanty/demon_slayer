import 'package:demon_slayer/configurations/configurations.dart';
import 'package:demon_slayer/features/app/presentation/character_grid.dart';
import 'package:flutter/material.dart';

class SlayersListPage extends StatelessWidget {
  const SlayersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Text(
        "Who'll You Choose?",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      const Expanded(
        child: CharacterGrid(
          characters: slayers,
        ),
      ),
    ],
  );
}
