import 'package:flutter/material.dart';
import 'package:healing_herbs/constants.dart';
import 'package:healing_herbs/screens/Login/widgets/widgets/text_field_container.dart';

class RoundedReEnter extends StatelessWidget {
  const RoundedReEnter({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            hintText: "Re-enter Password",
            hintStyle: TextStyle(fontFamily: 'OpenSans'),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
