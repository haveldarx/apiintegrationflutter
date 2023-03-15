import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview2/Pages/UI/homePage.dart';
import 'package:interview2/Pages/UI/introScreensMain.dart';
import 'package:interview2/Pages/UI/login.dart';

import '../../Widgets/generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  final String assetName = 'assets/Variant=Big.svg';
// final Widget svg = SvgPicture.asset(
//   assetName,
//   semanticsLabel: 'Acme Logo'
// );

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        animationDuration: const Duration(seconds: 1),
        backgroundColor: Color.fromRGBO( 16, 93, 56,1),
        splash: SvgPicture.asset('assets/Variant=Big.svg',
            semanticsLabel: 'Acme Logo'),
        nextScreen: LoginPage());
  }
}
