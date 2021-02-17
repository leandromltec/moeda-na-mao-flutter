import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class IndicadorLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 85,
              height: 85,
              child: CircularProgressIndicator(
                strokeWidth: 8.0,
                valueColor:
                    AlwaysStoppedAnimation<Color>(ColorsApp.corSecundaria),
              ),
            ),
          ),
          Center(
            child: Text(
              "Carregando...",
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
