import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class MyCircle extends PositionComponent {
  MyCircle({required double radius, Paint? paint, Vector2? position})
      : _radius = radius,
        _paint = paint ?? Paint()
          ..color = Colors.red,
        super(
          position: position,
          size: Vector2.all(2 * radius),
          anchor: Anchor.center,
        );

  final double _radius;
  final Paint _paint;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawCircle(Offset(_radius, _radius), _radius, _paint);
  }
}
