import 'package:auto_route/auto_route.dart';
import 'package:demon_slayer/features/app/presentation/pages/demons/demon_list_page.dart';
import 'package:demon_slayer/features/character/character.dart';

import '../../features/app/app.dart';

export 'package:auto_route/auto_route.dart';

export 'auth_guard.dart';
export 'route_parser.dart';
export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'slayers',
          page: SlayersListPage,
          initial: true,
        ),
        AutoRoute(
          path: 'demons',
          page: DemonsListPage,
        ),
      ],
    ),
    AutoRoute(
      path: '/character_details',
      page: CharacterDetailsPage,
    ),
    // AutoRoute(path: '*', page: UnknownRoutePage),
  ],
)
// extend the generated private router
class $AppRouter {}
