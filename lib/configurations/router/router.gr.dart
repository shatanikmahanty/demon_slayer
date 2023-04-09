// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart' as _i5;

import '../../features/app/app.dart' as _i1;
import '../../features/app/presentation/pages/demons/demon_list_page.dart'
    as _i3;
import '../../features/character/character.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CharacterDetailsPage(
          key: args.key,
          character: args.character,
        ),
      );
    },
    SlayersListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SlayersListPage(),
      );
    },
    DemonsListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DemonsListPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'slayers',
              fullMatch: true,
            ),
            _i4.RouteConfig(
              SlayersListRoute.name,
              path: 'slayers',
              parent: HomeRoute.name,
            ),
            _i4.RouteConfig(
              DemonsListRoute.name,
              path: 'demons',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i4.RouteConfig(
          CharacterDetailsRoute.name,
          path: '/character_details',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CharacterDetailsPage]
class CharacterDetailsRoute
    extends _i4.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    _i6.Key? key,
    required _i1.Character character,
  }) : super(
          CharacterDetailsRoute.name,
          path: '/character_details',
          args: CharacterDetailsRouteArgs(
            key: key,
            character: character,
          ),
        );

  static const String name = 'CharacterDetailsRoute';
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    this.key,
    required this.character,
  });

  final _i6.Key? key;

  final _i1.Character character;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{key: $key, character: $character}';
  }
}

/// generated route for
/// [_i1.SlayersListPage]
class SlayersListRoute extends _i4.PageRouteInfo<void> {
  const SlayersListRoute()
      : super(
          SlayersListRoute.name,
          path: 'slayers',
        );

  static const String name = 'SlayersListRoute';
}

/// generated route for
/// [_i3.DemonsListPage]
class DemonsListRoute extends _i4.PageRouteInfo<void> {
  const DemonsListRoute()
      : super(
          DemonsListRoute.name,
          path: 'demons',
        );

  static const String name = 'DemonsListRoute';
}
