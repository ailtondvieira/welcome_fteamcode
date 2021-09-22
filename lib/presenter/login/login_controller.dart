import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_controller.dart';
import '../../infra/repositories/login_repository.dart';

class LoginController extends GetxController {
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final LoginRepository _repository = LoginRepository();
  final formKey = GlobalKey<FormState>();

  void logar() async {
    Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);
    Map<String, dynamic> response =
        await _repository.authenticate(userTextController.text, passwordTextController.text);
    if (response['response']['status'] == 'ok') {
      Get.find<AppController>().setToken = response['response']['token'];
      Get.offNamed('/homeView');
    } else {
      Get.back();
    }
  }

  @override
  void onClose() {
    userTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }
}
