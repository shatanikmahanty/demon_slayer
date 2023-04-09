import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication.dart';

class LoginListener extends BlocListener<AuthCubit, AuthState> {
  LoginListener({
    Key? key,
    void Function(BuildContext context, User user)? onLogin,
    void Function(BuildContext context)? onLogout,
    Widget? child,
  }) : super(
            key: key,
            listener: (context, authState) => authState.user != null
                ? onLogin?.call(context, authState.user!)
                : onLogout?.call(context),
            child: child,
            listenWhen: (prev, next) => (next.user?.id != prev.user?.id));
}
