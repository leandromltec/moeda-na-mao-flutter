import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class CardTitulos extends StatefulWidget {
  final String urlImage;
  final String tituloMoeda;
  final String valor;

  CardTitulos(this.urlImage, this.tituloMoeda, this.valor);
  @override
  _CardTitulosState createState() =>
      _CardTitulosState(urlImage, tituloMoeda, valor);
}

class _CardTitulosState extends State<CardTitulos> {
  final String urlImage;
  final String tituloMoeda;
  final String valor;

  _CardTitulosState(this.urlImage, this.tituloMoeda, this.valor);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: Card(
          elevation: 20,
          shadowColor: ColorsApp.corSombra,
          color: ColorsApp.corCard,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /* Início Logo da Moeda */
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage(urlImage),
                  )),
              /* Fim Logo Moeda */

              /* Início Título Moeda */
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(bottom: 5, left: 10),
                    child: Text(
                      tituloMoeda,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  /* Fim Título Moeda */

                  Container(
                    width: 100,
                    height: 20,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      valor,
                      style: TextStyle(
                          color: Color(0XFF6cd9d8),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    width: 100,
                    height: 20,
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.arrow_upward,
                            size: 15,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          valor,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
