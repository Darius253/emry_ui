import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({Key? key}) : super(key: key);

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  String image = 'images/man.png';
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
                      'Look good, Feel good',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                              fontSize: 24,
                          height: 1.5,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Discover the latest trends in fashion and explore your personality.",
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
