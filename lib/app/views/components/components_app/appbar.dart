import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class AppBarApp extends StatelessWidget {
  final String tituloPagina;

  AppBarApp(this.tituloPagina);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsApp.corPrincipal,
      title: Center(
        child: Container(
          child: Text(
            tituloPagina,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
