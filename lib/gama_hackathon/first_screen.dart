import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lesson/gama_hackathon/welcome_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return
      AnimatedSplashScreen(
      splash: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GUJURLY ZENAN".split("").join("\n"),
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Colors.black)),
            Lottie.asset("asset/68022-bicycling-woman-in-purple.json",
                height: 200, width: 200, fit: BoxFit.cover),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      nextScreen:
      Welcom(),
      splashIconSize: 500,
      duration: 5000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.fade,
               animationDuration: const Duration(seconds: 3),
    )
    ;
  }
}
