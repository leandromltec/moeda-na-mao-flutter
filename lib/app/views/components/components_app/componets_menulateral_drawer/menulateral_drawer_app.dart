import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/components/components_app/componets_menulateral_drawer/item_drawer_tile.dart';

/* Biblioteca de ícones */
/* Documentação - https://pub.dev/packages/font_awesome_flutter/example */
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class MenuLateralDrawer extends StatelessWidget {
  final BuildContext contextMaterial;

  MenuLateralDrawer(this.contextMaterial);

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Drawer(
                child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0XFFF2e396c), Color(0XFFF314270)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                ListView(
                  padding: EdgeInsets.only(left: 32.0, top: 50.0),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(5.0),
                      height: 50,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Positioned(
                                top: 8.0,
                                left: 0.0,
                                child: Text(
                                  "Moeda na mão",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        "Mais informações sobre",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    ItemDrawer(
                        FontAwesomeIcons.dollarSign, "Cotações", "informacao"),
                    Divider(),
                    ItemDrawer(
                        FontAwesomeIcons.chartLine, "Títulos", "informacao"),
                    Divider(),
                    ItemDrawer(
                        FontAwesomeIcons.industry, "Ações", "informacao"),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                        child: Text(
                          "Aprenda sobre investimentos",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    ItemDrawer(FontAwesomeIcons.userFriends, "Influencers",
                        "influencers"),
                    Divider(
                      height: 20,
                    ),
                    ItemDrawer(Icons.web, "Sites", "sites"),
                    Divider(
                      height: 20,
                    ),
                    ItemDrawer(FontAwesomeIcons.youtube, "Vídeos", "videos"),
                  ],
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 130,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          //child: Padding(
                          //padding: const EdgeInsets.only(bottom: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorsApp.corPrincipal,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(10))),
                            width: 150,
                            height: 40,
                            child: RaisedButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  /* Função recolhe o menu */
                                  /* Fecha a rota de navegação */
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(
                                        FontAwesomeIcons.arrowCircleLeft,
                                        color: ColorsApp.corSecundaria,
                                        size: 20,
                                      ),
                                    ),
                                    Text(
                                      "Recolher Menu",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.0),
                                    )
                                  ],
                                )),
                          ),
                          //),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          //child: Align(
                          //alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              color: ColorsApp.corPrincipal,
                              child: Center(
                                child: Text(
                                  'Versão 1.0 - 2020',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          //),
                        ),
                      ],
                    ),
                  ),
                ),
                // ],
                //),
              ],
            )));
  }
}
