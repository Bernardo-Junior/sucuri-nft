import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sucuri_nft/presentation/pages/introduction/introduction_screen.dart';
import 'package:sucuri_nft/presentation/pages/sign_in/sign_in_screen.dart';

class SucuriNftApp extends StatelessWidget {
  const SucuriNftApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.white),
    );
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          // Colors from buttons
          secondary: Color(0XFFEDE68A),
          background: Color(0XFF001F3F),
          // Color from text
          onPrimary: Colors.white,
          // Colors from icons
          onSecondary: Colors.white,
          // Colors from containers
          primary: Color(0XFF193555),
          onSurface: Color(0XFF334B6A),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/introduction',
      getPages: [
        GetPage(
          name: '/introduction',
          page: () => const IntroductionScreen(),
        ),
        GetPage(
          name: '/signin',
          page: () => SignInScreen(),
        ),
      ],
    );
  }
}
