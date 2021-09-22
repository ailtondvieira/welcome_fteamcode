import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_controller.dart';
import 'clip_footer_login.dart';
import 'clip_header_login.dart';
import 'form_login.dart';

class BodyLogin extends StatelessWidget {
  final LoginController _controller;
  const BodyLogin(this._controller, {Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipHeaderLogin(),
          FormLogin(controller: _controller),
          ClipFooterLogin(),
        ],
      ),
    );
  }
}
