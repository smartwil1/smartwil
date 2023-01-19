import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:stai/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'STAI',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
          body: AnimatedSplashScreen(
              splash: Center(
                child: Lottie.network(
                  'https://assets3.lottiefiles.com/packages/lf20_raiw2hpe.json',
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              nextScreen: Home()),
        ),
      );
}
