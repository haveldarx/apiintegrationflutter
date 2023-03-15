import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Pages/UI/splash.dart';
import 'Utilities/Getx_controller/Bindings/bindings.dart';

Future<void> main() async {
  //WidgetFlutterBinding is used to interact with the Flutter engine
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            backgroundColor: Colors.white,
            textTheme: GoogleFonts.ptSansTextTheme(Theme.of(context)
                .textTheme
                .apply(fontSizeFactor: 0.8, fontSizeDelta: 2.0)),
            useMaterial3: true),
        initialBinding: GetXBindings(),
        home: SplashScreen(),
      ),
    );
  }
}
