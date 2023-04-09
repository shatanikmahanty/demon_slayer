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
    id: 'mitsuri',
    firstName: 'Mitsuri',
    lastName: 'Kanroji',
    swordStyle: 'Love',
    primaryColor: Colors.pinkAccent,
  ),
  Character(
    id: 'shinobu',
    firstName: 'Shinobu',
    lastName: 'Kocho',
    swordStyle: 'Insect',
    primaryColor: Color(0xff6e4cb6),
  ),
  Character(
    id: 'kyujoru',
    firstName: 'Kyujoru',
    lastName: 'Rengoku',
    swordStyle: 'Flame',
    primaryColor: Color(0xffff5349),
  ),
  Character(
    id: 'tengen',
    firstName: 'Tengen',
    lastName: 'Uzui',
    swordStyle: 'Sound',
    primaryColor: Color(0xff344a54),
  ),
  Character(
    id: 'gyomei',
    firstName: 'Gyomei',
    lastName: 'Himejima',
    swordStyle: 'Stone',
    primaryColor: Colors.grey,
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

const demons = <Character>[
  Character(
    id: 'muzan',
    firstName: 'Muzan',
    lastName: 'Kibutsuji',
    swordStyle: 'Demon King',
    primaryColor: Color(0xff383841),
  ),
  Character(
    id: 'nezuko',
    firstName: 'Nezuko',
    lastName: 'Kamado',
    swordStyle: 'Pyrokinesis',
    primaryColor: Color(0xffe5aeae),
  ),
  Character(
    id: 'tamayo',
    firstName: 'Tamayo',
    lastName: '____',
    swordStyle: 'Spell Caster',
    primaryColor: Color(0xff171620),
  ),
  Character(
    id: 'yushiro',
    firstName: 'Yushiro',
    lastName: 'Yamamoto',
    swordStyle: 'Invisibility',
    primaryColor: Color(0xffbfd7b1),
  ),
  Character(
    id: 'daki',
    firstName: 'Daki',
    lastName: '____',
    swordStyle: 'Shapeshifter',
    primaryColor: Color(0xffc2d55f),
  ),
  Character(
    id: 'gyutaro',
    firstName: 'Gyutaro',
    lastName: '____',
    swordStyle: 'Blood Sickels',
    primaryColor: Color(0xff566a7f),
  ),
];
