import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sucuri_nft/presentation/pages/introduction/introduction_screen.dart';

class SucuriNftApp extends StatelessWidget {
  const SucuriNftApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/introduction',
      getPages: [
        GetPage(name: '/introduction', page: () => const IntroductionScreen()),
      ],
    );
  }
}
