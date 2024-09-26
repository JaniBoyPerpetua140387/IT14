import 'package:flutter/material.dart';
import 'package:healing_herbs/constants.dart';
import 'package:healing_herbs/screens/Login/widgets/components/page_title_bar.dart';
import 'package:healing_herbs/screens/Login/widgets/components/under_part.dart';
import 'package:healing_herbs/screens/Login/widgets/components/upside.dart';
import 'package:healing_herbs/screens/Login/widgets/screens/signup_screen.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_button.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_icon.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_input_field.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_password_field.dart';
import 'package:healing_herbs/screens/nav_bar_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/login.png",
                ),
                const PageTitleBar(title: 'Login to your account'),
                Padding(
                  padding: const EdgeInsets.only(top: 310.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const RoundedInputField(
                            hintText: "Email", icon: Icons.email),
                        const RoundedPasswordField(),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 40.0, left: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'OpenSans',
                                        color: Color.fromARGB(255, 171, 171,
                                            171), // Customize as needed
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Checkbox(
                                    value: true,
                                    onChanged: (bool? value) {},
                                    activeColor: kPrimaryColor,
                                  ),
                                ],
                              ),
                              const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RoundedButton(
                            text: 'LOGIN',
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavBar()));
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        UnderPart(
                          title: "Don't have an account?",
                          navigatorText: "Register here",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          child: Column(
                            children: [
                              const Text(
                                "or use your email account",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'OpenSans',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              iconButton(context),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

iconButton(BuildContext context) {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RoundedIcon(imageUrl: "assets/images/facebook.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/google.jpg"),
    ],
  );
}
