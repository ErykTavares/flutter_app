import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/color_box.dart';
import 'package:flutter_app/shared/widgets/dice_roller.dart';
import 'package:flutter_app/shared/widgets/gradiente_container.dart';
import 'package:flutter_app/shared/widgets/image_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: GradienteContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: Magnifier.kStandardVerticalFocalPointShift,
                children: [
                  Text(
                    "Dice Game",
                    style: TextStyle(fontSize: 30, color: Colors.black87),
                  ),
                  DiceRoller(),
                ],
              ),
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   spacing: 20,
            //   children: <Widget>[
            // ColorBox(color: Colors.red, text: '1'),
            // ColorBox(color: Colors.purple, text: '2'),
            // ColorBox(color: Colors.blue, text: '3'),
            // Container(
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.symmetric(vertical: 0),
            //   child: Column(
            //     spacing: 0,
            //     children: [
            //       ImageWrapper(
            //         imagePath:
            //             'assets/images/HD-wallpaper-berserk-guts-badass-anime-thumbnail.jpg',
            //       ),
            //       ImageWrapper(
            //         imagePath:
            //             'assets/images/new-berserk-wallpapers-upscaled-to-8k-then-compressed-to-5-v0-z0120ermi47f1.jpg',
            //       ),
            //       ImageWrapper(
            //         imagePath:
            //             'assets/images/the-black-swordsman-berserk-thumb-728x410.jpg',
            //       ),
            //     ],
            //   ),
            // ),
            // ],
            // ),
          ),
        ),
      ),
    );
  }
}
