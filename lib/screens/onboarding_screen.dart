import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neon_ui/components/custom_outline.dart';
import 'package:neon_ui/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            //background pink color
            Positioned(
              top: screenHeight * 0.1,
              left: -86,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: constants.kPinkColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),

            //background green color
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: constants.kGreenColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),

            //SofeArea container
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.07,
                  ),
                  CustomOutline(
                    strokeWidth: 5,
                    radius: screenWidth * 0.8,
                    padding: const EdgeInsets.all(4),
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          constants.kPinkColor,
                          constants.kPinkColor.withOpacity(0),
                          constants.kGreenColor.withOpacity(0.1),
                          constants.kGreenColor
                        ],
                        stops: const [
                          0.2,
                          0.4,
                          0.6,
                          1
                        ]),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomLeft,
                              image: AssetImage('assets/loginWoman.png'))),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.09,
                  ),
                  Text(
                    'Watch movies in \nVirtual Reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: constants.kWhiteColor.withOpacity(0.85),
                      fontSize: screenHeight <= 667 ? 18 : 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Text(
                    'Download and watch offline\nwherever you are',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: constants.kWhiteColor.withOpacity(0.75),
                      fontSize: screenHeight <= 667 ? 12 : 16,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  CustomOutline(
                    strokeWidth: 3,
                    radius: 20,
                    padding: const EdgeInsets.all(3),
                    width: 160,
                    height: 38,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [constants.kPinkColor, constants.kGreenColor],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              constants.kPinkColor.withOpacity(0.5),
                              constants.kGreenColor.withOpacity(0.5)
                            ],
                          )),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            color: constants.kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        height: 7,
                        width: 7,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 0
                                ? constants.kGreenColor
                                : constants.kWhiteColor.withOpacity(0.2)),
                      );
                    }),
                  ),
                  SizedBox(height: screenHeight * 0.01)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
