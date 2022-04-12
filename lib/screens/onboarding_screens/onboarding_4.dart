import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingFour extends StatefulWidget {
  const OnboardingFour({Key? key}) : super(key: key);

  @override
  State<OnboardingFour> createState() => _OnboardingFourState();
}

class _OnboardingFourState extends State<OnboardingFour> {
  String image = 'images/vegetables.png';
  PageController controller = PageController();
  int activeImage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.5,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: IgnorePointer(
            ignoring: true,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                Column(
                  children:  [
                    Text(
                      'Order groceries',
                      textAlign: TextAlign.center,
                      style:  GoogleFonts.rubik(
                              fontSize: 24,
                          height: 1.5,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Order all your groceries online and get them delivered to you at your doorstep.",
                      textAlign: TextAlign.center,
                      style:  GoogleFonts.rubik(
                              color: Colors.white,
                          height: 1.5,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
