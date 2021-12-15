// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _userNameTextController = TextEditingController();

  double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    void _showWelcomeScreen() {
      Navigator.of(context).pushNamed("/welcome");
    }

    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          Text(
            "Sign Up",
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: InputDecoration(hintText: "First Name"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _lastNameTextController,
              decoration: InputDecoration(hintText: "Last Name"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _userNameTextController,
              decoration: InputDecoration(hintText: "UserName"),
            ),
          ),
          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> state) {
                  return state.contains(MaterialState.disabled)
                      ? null
                      : Colors.white;
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> state) {
                  return state.contains(MaterialState.disabled)
                      ? null
                      : Colors.blue;
                }),
              ),
              onPressed: _showWelcomeScreen,
              child: Text("Sign Up")),
        ],
      ),
    );
  }
}
