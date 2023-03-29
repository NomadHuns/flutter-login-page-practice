import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/logo.svg", height: 70, width: 70,),
        Text("Login"),
      ],
    );
  }
}