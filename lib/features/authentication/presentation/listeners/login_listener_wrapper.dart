import 'package:flutter/material.dart';
import 'package:demon_slayer/features/authentication/authentication.dart';

class LoginListenerWrapper extends StatefulWidget {
  const LoginListenerWrapper({
    super.key,
    this.onLogin,
    this.onLogout,
    required this.child,
    required this.initialUser,
  });

  final User? initialUser;
  final void Function(BuildContext context, User user)? onLogin;
  final void Function(BuildContext context)? onLogout;
  final Widget child;

  @override
  State<LoginListenerWrapper> createState() => _LoginListenerWrapperState();
}

class _LoginListenerWrapperState extends State<LoginListenerWrapper> {
  @override
  void initState() {
    super.initState();
    if (widget.initialUser != null) {
      widget.onLogin?.call(context, widget.initialUser!);
    }
  }

  @override
  Widget build(BuildContext context) => LoginListener(
        onLogin: widget.onLogin,
        onLogout: widget.onLogout,
        child: widget.child,
      );
}
