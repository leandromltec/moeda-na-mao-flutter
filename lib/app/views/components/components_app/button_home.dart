import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class BotaoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: "Teste",
      backgroundColor: ColorsApp.corPrincipal,
      child: const Icon(Icons.add),
      onPressed: null,
    );
  }
}
