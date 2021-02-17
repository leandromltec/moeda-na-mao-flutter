import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moedanamao/app/controllers/controller_influencers/influencers_controller.dart';
import 'package:moedanamao/app/views/components/components_app/appbar.dart';
import 'package:moedanamao/app/views/components/components_app/button_home.dart';
import 'package:moedanamao/app/views/components/components_app/fundo_app_gradient.dart';
import 'package:moedanamao/app/views/components/components_app/indicador_loading.dart';
import 'package:moedanamao/app/views/components/components_app/menu_bottombar.dart';
import 'package:moedanamao/app/views/components/components_influencers/card_influencers.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class InfluencersPages extends StatefulWidget {
  @override
  _InfluencersPagesState createState() => _InfluencersPagesState();
}

class _InfluencersPagesState extends State<InfluencersPages> {
  final controllerInfluencer = ControllerInfluencers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarApp("Influencers")),
        extendBody: true,
        bottomNavigationBar: MenuBottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: BotaoHome(),
        body: Container(
          decoration: fundoGradientApp(),
          child: Column(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              margin: EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                  color: ColorsApp.corSecundaria,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Text(
                        "Conheça alguns dos influencers mais renomados da internet e aprenda mais sobre investimentos",
                        style: TextStyle(color: Colors.white, fontSize: 11.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Observer(
              builder: (_) {
                if (controllerInfluencer.listaInfluencers.value == null) {
                  return IndicadorLoading();
                } else {
                  return ListView.builder(
                      itemCount:
                          controllerInfluencer.listaInfluencers.value.length,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        if (controllerInfluencer.listaInfluencers.value.length >
                            0) {
                          return Column(
                            children: <Widget>[
                              CardInfluencers(controllerInfluencer
                                  .listaInfluencers.value[index]),
                            ],
                          );
                        } else {
                          return IndicadorLoading();
                        }
                      });
                }
              },
            )
            //],

            /*ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    CardVideo();
                    CardVideo(),
              CardVideo(),
              CardVideo(),
              CardVideo(),
              CardVideo(),
              CardVideo(),
              CardVideo(),
                  }),*/

            //CardInfluencers(),
          ]),
        ));
  }
}
