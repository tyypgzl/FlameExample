import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_example/page/game_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.setPortrait();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final MediumGameExample flameExample = MediumGameExample();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flame Example',
      home: GameWidget(
        game: flameExample,
      ),
    );
  }
}
