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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/app/app.dart' deferred as _i1;
import '../../features/app/presentation/pages/demons/demon_list_page.dart'
    deferred as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.HomePage(),
        ),
      );
    },
    SlayersListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.SlayersListPage(),
        ),
      );
    },
    DemonsListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.DemonsListPage(),
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/',
          deferredLoading: true,
          children: [
            _i3.RouteConfig(
              SlayersListRoute.name,
              path: 'slayers',
              parent: HomeRoute.name,
              deferredLoading: true,
            ),
            _i3.RouteConfig(
              DemonsListRoute.name,
              path: 'demons',
              parent: HomeRoute.name,
              deferredLoading: true,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.SlayersListPage]
class SlayersListRoute extends _i3.PageRouteInfo<void> {
  const SlayersListRoute()
      : super(
          SlayersListRoute.name,
          path: 'slayers',
        );

  static const String name = 'SlayersListRoute';
}

/// generated route for
/// [_i2.DemonsListPage]
class DemonsListRoute extends _i3.PageRouteInfo<void> {
  const DemonsListRoute()
      : super(
          DemonsListRoute.name,
          path: 'demons',
        );

  static const String name = 'DemonsListRoute';
}
