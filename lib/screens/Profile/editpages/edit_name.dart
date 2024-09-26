import 'package:flutter/material.dart';
import 'package:healing_herbs/screens/Profile/userdatas/user_data.dart';

class EditNameFormPage extends StatefulWidget {
  const EditNameFormPage({super.key});

  @override
  EditNameFormPageState createState() {
    return EditNameFormPageState();
  }
}

class EditNameFormPageState extends State<EditNameFormPage> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    firstNameController.dispose();
    super.dispose();
  }

  void updateUserValue(String name) {
    user.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
              width: 330,
              child: Text(
                "What's Your Name?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 16, 0),
                  child: SizedBox(
                      height: 100,
                      width: 150,
                      child: TextFormField(
                        // Handles Form Validation for First Name
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          } else if (!isAlpha(value)) {
                            return 'Only Letters Please';
                          }
                          return null;
                        },
                        decoration:
                            const InputDecoration(labelText: 'First Name'),
                        controller: firstNameController,
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 16, 0),
                  child: SizedBox(
                      height: 100,
                      width: 150,
                      child: TextFormField(
                        // Handles Form Validation for Last Name
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          } else if (!isAlpha(value)) {
                            return 'Only Letters Please';
                          }
                          return null;
                        },
                        decoration:
                            const InputDecoration(labelText: 'Last Name'),
                        controller: secondNameController,
                      )))
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 330,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate() &&
                            isAlpha(firstNameController.text +
                                secondNameController.text)) {
                          updateUserValue(
                              "${firstNameController.text} ${secondNameController.text}");
                          Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        'Update',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  )))
        ],
      ),
    ));
  }
}

bool isAlpha(String value) {
  final RegExp alphaRegExp = RegExp(r'^[a-zA-Z]+$');
  return alphaRegExp.hasMatch(value);
}
