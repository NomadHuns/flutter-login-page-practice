import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _loginInput("Email"),
        _loginInput("Password"),
        _loginButton()
      ],
    );
  }

  TextButton _loginButton() {
    return TextButton(
        onPressed: () {},
        child: Text("Login"),
      );
  }

  Widget _loginInput(String text) {
    return Column(
        children: [
          Text(text),
          TextFormField(
            decoration: InputDecoration(hintText: "Enter $text"),
          ),
        ],
      );
  }
}
