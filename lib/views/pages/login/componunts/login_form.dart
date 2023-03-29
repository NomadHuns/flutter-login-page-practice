import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _loginInput("Email"),
        SizedBox(height: 10),
        _loginInput("Password"),
        SizedBox(height: 20,),
        _loginButton(),
      ],
    );
  }

  TextButton _loginButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _loginInput(String text) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Text(text),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
