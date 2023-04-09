import 'package:demon_slayer/configurations/configurations.dart';
import 'package:flutter/material.dart';

class DSAppBar extends StatelessWidget with PreferredSizeWidget {
  const DSAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        title: Image.asset(
          'assets/images/animated_icon.gif',
          height: 80,
        ),
        centerTitle: true,
      );

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 10);
}
