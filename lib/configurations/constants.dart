import 'package:demon_slayer/features/app/data/model/character_model.dart';
import 'package:flutter/material.dart';

const appLogoPath = 'assets/app_logo/logo.svg';
const appLogoDarkPath = 'assets/app_logo/logo_dark.svg';
const appTitle = 'Demon Slayer';

const slayers = <Character>[
  Character(
    id: 'giyu',
    firstName: 'Giyu',
    lastName: 'Tomioka',
    swordStyle: 'Water',
    primaryColor: Color(0xff22c2f3),
  ),
  Character(
    id: 'kyujoru',
    firstName: 'Kyujoru',
    lastName: 'Rengoku',
    swordStyle: 'Fire',
    primaryColor: Color(0xffff5349),
  ),
  Character(
    id: 'tanjiro',
    firstName: 'Tanjiro',
    lastName: 'kamado',
    swordStyle: 'Sun',
    primaryColor: Colors.black,
  ),
  Character(
    id: 'zenitsu',
    firstName: 'Zenitsu',
    lastName: 'Agatsuma',
    swordStyle: 'Thunder',
    primaryColor: Colors.amberAccent,
  ),
  Character(
    id: 'inosuke',
    firstName: 'Inosuke',
    lastName: 'Hashibara',
    swordStyle: 'Beast',
    primaryColor: Colors.blueGrey,
  ),
];
