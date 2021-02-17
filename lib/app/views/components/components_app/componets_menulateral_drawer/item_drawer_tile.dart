import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moedanamao/app/views/pages/pages_menu/influencers.dart';
import 'package:moedanamao/app/views/pages/pages_menu/informacoes_page.dart';
import 'package:moedanamao/app/views/pages/pages_menu/videos_page.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class ItemDrawer extends StatelessWidget {
  final IconData iconeItemDrawer;
  final String tituloItemDrawer;
  final String categoria;

  ItemDrawer(this.iconeItemDrawer, this.tituloItemDrawer, this.categoria);

  @override
  Widget build(BuildContext context) {
    //Material - para ter um efeito ao clicar
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: ColorsApp.corSecundaria,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          if (categoria == "informacao") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InformacoesPage(tituloItemDrawer)));
          }
          if (categoria == "videos") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => VideosPage()));
          }

          if (categoria == "influencers") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InfluencersPages()));
          }
        },
        child: Container(
            height: 35.0,
            padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
            decoration: BoxDecoration(
                color: ColorsApp.corSecundaria,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(10))),
            child: Row(
              children: <Widget>[
                FaIcon(
                  iconeItemDrawer,
                  size: 20.0,
                  color: ColorsApp.corPrincipal,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  tituloItemDrawer,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            )),
      ),
    );
  }
}
