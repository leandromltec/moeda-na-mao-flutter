/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-9921b927 */
/* Github - https://github.com/leandromltec */

/* Widget de Cards - local onde são exibidas informações como preço do dólar, bitcoin entre outros */

import 'package:flutter/material.dart';
import 'package:moedanamao/app/controllers/controllers_app/shared_controller.dart';
import 'package:moedanamao/app/model/cotacoes/moeda_model.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

/* Stateful - utilizado porque sofrerá mudanças nos valores das moedas */
class CardMoeda extends StatefulWidget {
  final Moeda moeda;

  /*final String urlIconeMoeda;
  final String tituloMoeda;
  final String valor;
  final String maximo;
  final String minimo;
  final double porcentagemVaciracao;
  final String dataCotacaoMoeda;*/

  /*const CardMoeda(this.urlIconeMoeda, this.tituloMoeda, this.valor, this.maximo,
      this.minimo, this.porcentagemVaciracao, this.dataCotacaoMoeda);*/

  const CardMoeda(this.moeda);

  @override
  /*_CardMoedaState createState() => _CardMoedaState(urlIconeMoeda, tituloMoeda,
      valor, maximo, minimo, porcentagemVaciracao, dataCotacaoMoeda);*/
  _CardMoedaState createState() => _CardMoedaState(moeda);
}

class _CardMoedaState extends State<CardMoeda> {
  final Moeda moeda;

  /*final String urlIconeMoeda;
  final String tituloMoeda;
  final String valor;
  final String maximo;
  final String minimo;
  final double porcentagemVaciracao;
  final String dataCotacaoMoeda;*/

  /* _CardMoedaState(this.urlIconeMoeda, this.tituloMoeda, this.valor, this.maximo,
      this.minimo, this.porcentagemVaciracao, this.dataCotacaoMoeda);*/

  _CardMoedaState(this.moeda);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 5, 6, 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: Card(
          elevation: 20,
          shadowColor: ColorsApp.corSombra,
          color: ColorsApp.corCard,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /* Início Logo da Moeda */
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 5),
                  child: Image(
                    image: AssetImage(moeda.urlIconAcao),
                  )),
              /* Fim Logo Moeda */

              /* Início Título Moeda */
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(bottom: 5, left: 5),
                    child: Text(
                      moeda.titulo,
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
                      moeda.valorCompra,
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
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(moeda.maximo,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0)),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.red,
                        size: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(moeda.minimo,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0)),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: iconeSetaPositivoNegativo(
                        moeda.porcentagemVariavel, 15.0),
                  ),
                  Text(
                    moeda.porcentagemVariavel.toString() + " %",
                    style: TextStyle(fontSize: 10, color: Colors.white),
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
