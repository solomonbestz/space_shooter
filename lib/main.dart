import 'package:flame/game.dart';
import 'package:space_shooter/game.dart';
import 'package:flutter/material.dart';

void main() {
  final SpaceGame game = SpaceGame();

  runApp(GameWidget(game: game));
}

