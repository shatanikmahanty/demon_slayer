import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:demon_slayer/features/authentication/authentication.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

class AuthCubit extends HydratedCubit<AuthState> {
  static AuthCubit get instance => _instance;
  static final AuthCubit _instance = AuthCubit._internal();

  // AuthenticationRepository? _authenticationRepository;

  AuthCubit._internal() : super(const AuthState());

  // void initialize(AuthenticationRepository authenticationRepository) {
  //   if (_authenticationRepository != null) {
  //     throw Exception('Already initialized');
  //   }
  //
  //   _authenticationRepository = authenticationRepository;
  // }

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  void _login(
    User user,
  ) =>
      emit(
        state.copyWith(
          user: user,
        ),
      );

  void logout() {
    emit(
      state.copyWith(
        user: null,
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();
}
