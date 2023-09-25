import 'package:flutter/material.dart';
import 'constants/splashandWelcome.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize =MediaQuery.of(context).size;
    return Scaffold(
body:Container(
  width: screenSize.width,
  height: screenSize.height,
  decoration: BoxDecoration(
image:DecorationImage(
    image: backgroundImage,
  fit: BoxFit.cover,
  colorFilter: ColorFilter.mode(
    Colors.black.withOpacity(0.1),
    BlendMode.darken
  )

)
  ),
),
    );
  }
}



