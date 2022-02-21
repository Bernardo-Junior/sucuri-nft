import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF001F3F),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              child: SizedBox(
                height: size.height * 0.76,
                child: Image.asset(
                  'lib/assets/images/nft-background.png',
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height * 0.355,
                color: Colors.red,
                child: Column(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
