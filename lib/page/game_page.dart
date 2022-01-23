import 'package:flame/game.dart';
import 'package:flame_example/component/animation_sprite_component.dart';
import 'package:flame_example/component/parallax_component.dart';

class MediumGameExample extends FlameGame {
  final MyParallaxComponent myParallaxComponent = MyParallaxComponent();
  @override
  Future<void>? onLoad() {
    add(myParallaxComponent);
    return super.onLoad();
  }
}
