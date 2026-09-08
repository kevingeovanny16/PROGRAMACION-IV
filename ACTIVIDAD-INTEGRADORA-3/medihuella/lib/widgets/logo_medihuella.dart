import 'package:flutter/material.dart';

class LogoMediHuella extends StatelessWidget {
  final double tamano;

  const LogoMediHuella({
    super.key,
    this.tamano = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icon/app_icon.png',
      width: tamano,
      height: tamano,
    );
  }
}