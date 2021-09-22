import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_controller.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
    @required LoginController controller,
  })  : _controller = controller,
        super(key: key);

  final LoginController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: _controller.formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _controller.userTextController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Usuário',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
              ),
              validator: (value) => value.trim().isEmpty ? 'O usuário é necessário' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _controller.passwordTextController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
              ),
              validator: (value) => value.trim().isEmpty ? 'A senha é necessário' : null,
            ),
            const SizedBox(height: 16),
            MaterialButton(
              color: Colors.white,
              splashColor: Colors.red[900],
              height: 45,
              minWidth: Get.width / 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                if (_controller.formKey.currentState.validate()) {
                  _controller.logar();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
