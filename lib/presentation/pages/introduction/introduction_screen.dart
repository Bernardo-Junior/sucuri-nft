import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sucuri_nft/presentation/components/atom/container_custom.dart';
import 'package:sucuri_nft/utils/images.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF001F3F),
      body: ContainerCustom(
        size: size,
        child: Stack(
          children: [
            Positioned(
              child: SizedBox(
                height: size.height * 0.76,
                child: Image.asset(
                  nftBackground,
                ),
              ),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      const Color(0XFF001F3F).withOpacity(0),
                      const Color(0XFF001F3F)
                    ], // red to yellow
                    tileMode:
                        TileMode.clamp, // repeats the gradient over the canvas
                  ),
                ),
                height: size.height,
                width: size.width,
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.355,
                child: Column(
                  children: [
                    Text(
                      'SUCURI NTF',
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                          color: Color(0XFFF0F0F0),
                          letterSpacing: .5,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 22.5,
                        left: 22.5,
                        top: 16,
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor turpis sed condime. Dolor turpis sed condime',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                            color: Color(0XFFF0F0F0),
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: .5,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 47),
                      width: size.width * 0.9,
                      height: size.height * 0.055,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0XFFEDE68A),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/signin', (route) => false);
                        },
                        child: Text(
                          'Vamos Começar',
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                              color: Color(0XFF001F3F),
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: .5,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
