import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        decoration: const BoxDecoration(
            color: Color(0xff19191B),
            image: DecorationImage(
              image: AssetImage('assets/Background.png'),
              fit: BoxFit.cover,
            )),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset('assets/Background.png'),
              Container(
                width: 338,
                height: 338,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: const GradientBoxBorder(
                    width: 6,
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: <Color>[
                          Color(0xff09FBD3),
                          Color(0xff09FBD3),
                          Color(0xff6AB9CA),
                          Color(0xff9E95C4),
                          Color(0xffFE53BB),
                          Color(0xffFE53BB),
                        ]),
                  ),
                  borderRadius: BorderRadius.circular(180),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/loginWoman.png'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                      )),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 292,
                    child: const Text(
                      'Watch movies in Virtual Reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff0f0f0)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 264,
                    child: const Text('Download and watch offline wherever you are',
                    textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff0f0f0))),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 160,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: const GradientBoxBorder(
                        width: 4,
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: <Color>[
                              Color(0xff09FBD3),
                              Color(0xff09FBD3),
                              Color(0xffFE53BB),
                              Color(0xffFE53BB),
                            ]),
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
