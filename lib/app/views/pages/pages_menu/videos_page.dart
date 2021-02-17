import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/components/components_app/appbar.dart';
import 'package:moedanamao/app/views/components/components_app/button_home.dart';
import 'package:moedanamao/app/views/components/components_app/fundo_app_gradient.dart';
import 'package:moedanamao/app/views/components/components_app/menu_bottombar.dart';
import 'package:moedanamao/app/views/components/components_videos/card_videos.dart';
import 'package:moedanamao/app/views/theme/colors.dart';
import 'package:moedanamao/app/model/videos/assunto_videos.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

List<AssuntoVideos> getAssuntos() {
  return <AssuntoVideos>[
    AssuntoVideos(1, "Todos os assuntos"),
    AssuntoVideos(2, "Ações"),
    AssuntoVideos(3, "CDB e LC"),
    AssuntoVideos(4, "LCI e LCA"),
    AssuntoVideos(5, "Tesouros"),
  ];
}

class _VideosPageState extends State<VideosPage> {
  List<AssuntoVideos> _listaAssuntos = getAssuntos();

  List<DropdownMenuItem<AssuntoVideos>> _dropDownMenuItems;

  AssuntoVideos assuntoSelecionado;

  List<DropdownMenuItem<AssuntoVideos>> buildDropDown(List assuntos) {
    List<DropdownMenuItem<AssuntoVideos>> items = List();

    for (AssuntoVideos itemAssunto in _listaAssuntos) {
      items.add(DropdownMenuItem(
        value: itemAssunto,
        child: Center(child: Text(itemAssunto.nomeAssunto)),
      ));
    }

    return items;
  }

  @override
  void initState() {
    _dropDownMenuItems = buildDropDown(_listaAssuntos);
    assuntoSelecionado = _dropDownMenuItems[0].value;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarApp("Vídeos")),
        extendBody: true,
        bottomNavigationBar: MenuBottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: BotaoHome(),
        body: Container(
          decoration: fundoGradientApp(),
          child: Column(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              margin: EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                  color: ColorsApp.corSecundaria,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Selecione o asunto do vídeo que quer assistir. Você pode encontrar mais informações dos" +
                          " influencers na opção Menu > Influencers",
                      style: TextStyle(color: Colors.white, fontSize: 11.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: ColorsApp.corPrincipal,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 150,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          //value: "Cotações",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                          value: assuntoSelecionado,
                          items: _dropDownMenuItems,
                          isExpanded: true,
                          iconSize: 15,
                          iconEnabledColor: Colors.white,
                          focusColor: Colors.white,
                          dropdownColor: ColorsApp.corPrincipal,
                          icon: Icon(Icons.arrow_drop_down),
                          onChanged: (AssuntoVideos dropDownItem) {
                            setState(() {
                              assuntoSelecionado = dropDownItem;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),

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
            ),
            CardVideo(),
          ]),
        ));
  }
}
