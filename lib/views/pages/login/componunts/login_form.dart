import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _loginInput("Email", false),
          SizedBox(height: 10),
          _loginInput("Password", true),
          SizedBox(
            height: 20,
          ),
          _loginButton(context),
        ],
      ),
    );
  }

  Widget _loginButton(context) {
    return TextButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.pushNamed(context, "/home");
        }
      },
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _loginInput(String text, bool obscure) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Text(text),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (value) => value!.isEmpty ? "Please enter $text" : null,
          obscureText: obscure,
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
