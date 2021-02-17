import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/components/components_app/appbar.dart';
import 'package:moedanamao/app/views/components/components_app/button_home.dart';
import 'package:moedanamao/app/views/components/components_app/fundo_app_gradient.dart';
import 'package:moedanamao/app/views/components/components_app/menu_bottombar.dart';

/*https://flutter.dev/docs/cookbook/images/network-image*/
/* https://api.flutter.dev/flutter/widgets/RichText-class.html */

class InformacoesPage extends StatelessWidget {
  final String tituloPagina;

  InformacoesPage(this.tituloPagina);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarApp(tituloPagina)),
      extendBody: true,
      bottomNavigationBar: MenuBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotaoHome(),
      body: Container(
        decoration: fundoGradientApp(),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images6.alphacoders.com/361/thumb-1920-361847.jpg"),
              )),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        letterSpacing: 1.0),
                    text: "Quando se diz que a cotação de uma ação está em X reais," +
                        "o que você imagina? Uma fada dos preços, tentando decidir qual" +
                        "número entre 0 e 100 vai magicamente marcar dessa vez?" +
                        "Um conselho celestial dos preços? \n Uma manifestação milagrosa, sendo que" +
                        "se muitos investidores pensarem em um número, ele imediatamente se tornará o" +
                        "preço daquele ativo?",
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
