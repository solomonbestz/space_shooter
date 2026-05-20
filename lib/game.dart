import 'dart:async';


import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:space_shooter/components/player.dart';

class SpaceGame extends FlameGame {
    late Player player;


    @override
    FutureOr<void> onLoad() async {

        await Flame.device.fullScreen();

        await Flame.device.setPortrait();

        startGame();

        return super.onLoad();

    }

    void startGame() {
      _createPlayer();
    }
    
    void _createPlayer() {
      player = Player()
        ..anchor = Anchor.center
        ..position = Vector2(size.x / 2, size.y * 0.2)
        ..size = Vector2.all(100);
      add(player);
    }
}