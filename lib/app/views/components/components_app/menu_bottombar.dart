import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

/* https://pub.dev/packages/floating_bottom_navigation_bar */

class MenuBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return FloatingNavbar(
        backgroundColor: ColorsApp.corCard,
        currentIndex: 0,
        onTap: null,
        selectedBackgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        items: [
          FloatingNavbarItem(icon: Icons.video_library, title: "Canais"),
          FloatingNavbarItem(icon: Icons.menu, title: "Menu"),
        ]);*/

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: ColorsApp.corCard,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          botoesMenu("Sobre", Icons.info, 0, 0),
          botoesMenu("Canais", Icons.perm_device_information, 0, 30),
          botoesMenu("Login", FontAwesomeIcons.userCircle, 30, 0),
          botoesMenu("Menu", Icons.menu, 0, 0),
        ],
      ),
    );
  }
}

Widget botoesMenu(String titulo, IconData icone, double marginEsquerda,
    double marginDireita) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      child: Container(
        margin: EdgeInsets.only(left: marginEsquerda, right: marginDireita),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 40,
        width: 40,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icone,
              color: Colors.white,
              size: 16,
            ),
            Text(
              titulo,
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
      ),
    ),
  );
}
