import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ClipFooterLogin extends StatelessWidget {
  const ClipFooterLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperOne(reverse: true),
          child: Container(
            height: 100,
            color: Colors.red,
          ),
        ),
        ClipPath(
          clipper: WaveClipperOne(flip: true),
          child: Container(
            height: 35,
            color: Colors.red[900],
          ),
        ),
      ],
    );
  }
}
