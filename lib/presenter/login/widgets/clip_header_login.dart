import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ClipHeaderLogin extends StatelessWidget {
  const ClipHeaderLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperOne(flip: true),
      child: Container(
        height: 120,
        color: Colors.red,
        child: Center(
          child: Text(
            "Login SisProduct",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
