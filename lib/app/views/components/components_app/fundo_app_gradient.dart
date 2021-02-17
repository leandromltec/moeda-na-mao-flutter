import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

BoxDecoration fundoGradientApp() {
  return BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.8, 1],
        colors: [ColorsApp.corPrincipal, Colors.blue]),
  );
}
