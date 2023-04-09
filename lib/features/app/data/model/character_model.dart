import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String id,
    required String firstName,
    required String lastName,
    required String swordStyle,
    required Color primaryColor,
  }) = _Character;
}
