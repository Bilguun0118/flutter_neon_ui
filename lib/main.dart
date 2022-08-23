import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_ui/screens/onboarding_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const OnboardingScreen(),
    );
    
    
    // Container(
    //   decoration: const BoxDecoration(
    //         color: Color(0xff19191B),
    //         image: DecorationImage(
    //           image: AssetImage('assets/homeBackground.png'),
    //           fit: BoxFit.contain,
    //         )),
    //   child: GetMaterialApp(
    //     color: Colors.black12,
    //     initialRoute: loginRoute,
    //     routes: <String, WidgetBuilder> {
    //       loginRoute: (context) => const LoginScreen(),
    //       homeRoute: (context) => const HomeScreen(),
    //     }
    //   ),
    // );
  }
}