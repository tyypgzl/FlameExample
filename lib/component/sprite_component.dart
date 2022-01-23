import 'package:flame/components.dart';
import 'package:flame_example/page/game_page.dart';

class MySprite extends SpriteComponent with HasGameRef<MediumGameExample> {
  MySprite({required this.spritePosition, required this.spritreSize}) : super(size: spritreSize, position: spritePosition);

  final Vector2 spritreSize;
  final Vector2 spritePosition;

  @override
  Future<void>? onLoad() async {
    sprite = await gameRef.loadSprite('flame.png');
    return super.onLoad();
  }
}
