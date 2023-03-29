import 'package:flutter/material.dart';

import 'componunts/login_form.dart';
import 'componunts/login_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 200),
            LoginLogo(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
