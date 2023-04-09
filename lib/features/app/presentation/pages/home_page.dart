import 'package:demon_slayer/configurations/configurations.dart';
import 'package:demon_slayer/ds_icons.dart';
import 'package:demon_slayer/features/app/presentation/ds_appbar.dart';
import 'package:flutter/material.dart';

export 'slayers/slayer_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        resizeToAvoidBottomInset: false,
        routes: const [
          SlayersListRoute(),
          DemonsListRoute(),
        ],
        appBarBuilder: (context, tabsRouter) => const DSAppBar(),
        bottomNavigationBuilder: (context, tabsRouter) => SafeArea(
          bottom: true,
          child: SizedBox(
            child: BottomNavigationBar(
              items: bottomItems,
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) => tabsRouter.setActiveIndex(value),
            ),
          ),
        ),
      );

  List<BottomNavigationBarItem> get bottomItems => const [
        BottomNavigationBarItem(
          icon: AppBottomNavigationBarIcon(
            icon: DSIcons.sword,
          ),
          activeIcon: AppBottomNavigationBarIcon(
            icon: DSIcons.sword_filled,
          ),
          label: 'Slayers',
          tooltip: 'Slayers',
        ),
        BottomNavigationBarItem(
          icon: AppBottomNavigationBarIcon(
            icon: DSIcons.demon,
          ),
          activeIcon: AppBottomNavigationBarIcon(
            icon: DSIcons.demon_filled,
          ),
          label: 'Demons',
          tooltip: 'Demons',
        ),
      ];
}

class AppBottomNavigationBarIcon extends StatelessWidget {
  const AppBottomNavigationBarIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: kPadding * 2,
          bottom: kPadding,
        ),
        child: Icon(icon),
      );
}
