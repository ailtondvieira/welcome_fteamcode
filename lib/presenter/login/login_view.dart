import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
import 'widgets/body_login.dart';

class LoginView extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: BodyLogin(_loginController),
      ),
    );
  }
}
