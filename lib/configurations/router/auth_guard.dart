import 'dart:async';

import 'package:demon_slayer/features/authentication/authentication.dart';

import 'router.dart';

bool get isAuthenticated => AuthCubit.instance.state.user != null;

class AuthGuard extends AutoRedirectGuard {
  late StreamSubscription<AuthState> _subscription;

  AuthGuard() {
    _subscription = AuthCubit.instance.stream.listen(
      (state) {
        if (state.user != null) {
          reevaluate();
        } else {
          reevaluate(
              // strategy: const ReevaluationStrategy.removeAllAndPush(
              //   TasksRouter(),
              // ),
              );
        }
      },
    );
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      // redirect(const LoginRouter(), resolver: resolver);
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async => isAuthenticated;
}
