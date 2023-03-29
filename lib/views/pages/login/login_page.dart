import 'package:flutter/material.dart';

import 'componunts/login_form.dart';
import 'componunts/login_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LoginLogo(),
          LoginForm(),
        ],
      ),
    );
  }
}
