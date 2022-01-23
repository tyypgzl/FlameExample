import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flame_example/page/game_page.dart';

class MyParallaxComponent extends ParallaxComponent<MediumGameExample> {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('parallax/bg.png'),
        ParallaxImageData('parallax/mountain-far.png'),
        ParallaxImageData('parallax/mountains.png'),
        ParallaxImageData('parallax/trees.png'),
        ParallaxImageData('parallax/foreground-trees.png'),
      ],
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
  }
}
