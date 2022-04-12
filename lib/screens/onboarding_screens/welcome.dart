import 'package:emry_ui/screens/authentication/register_screen.dart';
import 'package:emry_ui/screens/onboarding_screens/onboarding_1.dart';
import 'package:emry_ui/screens/onboarding_screens/onboarding_2.dart';
import 'package:emry_ui/screens/onboarding_screens/onboarding_3.dart';
import 'package:emry_ui/screens/onboarding_screens/onboarding_4.dart';
import 'package:emry_ui/screens/onboarding_screens/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _pageController = PageController();
  int pageIndex = 0;

  List<Widget> screens = [
    const WelcomePage(),
    const OnboardingOne(),
    const OnboardingTwo(),
    const OnboardingThree(),
    const OnboardingFour(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        PageView(
          pageSnapping: true,
          onPageChanged: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          controller: _pageController,
          children: screens,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                      child: Text(
                        'Skip',
                        style: GoogleFonts.rubik(
                            color: const Color(0xffffffff),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: SmoothPageIndicator(
                controller: _pageController,
                count: screens.length,
                effect: const SwapEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Color.fromARGB(
                        204, 214, 94, 20)), // your preferred effect
              )),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: pageIndex != 4
                    ? () {
                        _pageController.animateToPage(pageIndex + 1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }
                    : () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(234, 250, 101, 8),
                      borderRadius: BorderRadius.zero),
                  child: Center(
                      child: Text(
                    'Next',
                    style: GoogleFonts.rubik(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 231, 223, 223)),
                  )),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
