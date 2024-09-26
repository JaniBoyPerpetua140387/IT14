import 'package:flutter/material.dart';
import 'package:healing_herbs/screens/Login/widgets/components/page_title_bar.dart';
import 'package:healing_herbs/screens/Login/widgets/components/under_part.dart';
import 'package:healing_herbs/screens/Login/widgets/components/upside.dart';

import 'package:healing_herbs/screens/Login/widgets/screens/screens.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_button.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_input_field.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_password_field.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/rounded_re_enter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  imgUrl: "assets/images/register.png",
                ),
                const PageTitleBar(title: 'Create New Account'),
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
                        const RoundedInputField(
                            hintText: "Name", icon: Icons.person),
                        const RoundedPasswordField(),
                        const RoundedReEnter(),
                        RoundedButton(text: 'REGISTER', press: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        UnderPart(
                          title: "Already have an account?",
                          navigatorText: "Login here",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 15,
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
