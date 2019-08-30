import 'dart:ui';

import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color loginGradientStart = const Color(0xFFffffff);
  static const Color loginGradientEnd = const Color(0xFFf43f5f);
  static const Color loginButtonMix = const Color(0xFFeb66f30);
  static const Color dotifyPrimaryColor = const Color(0xFFe55F2c);
  static const Color dotifySecondaryColor = const Color(0x75e55F2c);
  static const Color dotifyTertiaryColor = const Color(0xFFffc0cb);
  static const Color dotifyFacebook = const Color(0xFF334f8d);

  static const prmaryGradient = const LinearGradient(
      colors: const [loginGradientStart, loginGradientEnd],
      stops: const [0.0, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
}
