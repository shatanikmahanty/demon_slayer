import 'package:demon_slayer/configurations/configurations.dart';
import 'package:demon_slayer/features/app/presentation/character_grid.dart';
import 'package:flutter/cupertino.dart';

class SlayersListPage extends StatelessWidget {
  const SlayersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const CharacterGrid(
        characters: slayers,
      );
}
