import 'dart:async';

import 'package:demon_slayer/ds_app_builder.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'configurations/configurations.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      DjangoflowAppSnackbar.showError(
        exception.toString(),
      );
    },
    rootWidgetBuilder: (appBuilder) async {
      String? initialDeepLink;
      final appLinksRepository = AppLinksRepository();

      AppCubit.initialState = const AppState(themeMode: ThemeMode.dark);
      AppCubit.instance.updateThemeMode(ThemeMode.dark);

      if (!kIsWeb) {
        initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
      }

      // initialize router
      final router = AppRouter(
          // authGuard: AuthGuard(),
          );

      return appBuilder(
        DSAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
        ),
      );
    },
  );
}
