import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flame_example/page/game_page.dart';

class CatComponent extends SpriteAnimationComponent with HasGameRef<MediumGameExample> {
  CatComponent() : super(size: Vector2.all(200));

  final double _animationSpeed = .15;
  final Vector2 catSize = Vector2(32, 32);
  final String imgUrl = 'run.png';
  late final SpriteAnimation runAnimation;

  @override
  Future<void>? onLoad() async {
    position = Vector2.all(100);
    final spriteSheet = SpriteSheet(image: await gameRef.images.load(imgUrl), srcSize: catSize);
    animation = spriteSheet.createAnimation(row: 0, stepTime: _animationSpeed, to: 7);
    return super.onLoad();
  }
}
