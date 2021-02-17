/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

import 'package:flutter/material.dart';
import 'package:moedanamao/app/controllers/controllers_app/shared_controller.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

/* Stateful - selecionado este tipo de widget pelo fato das ações sofrerem alterações
conforme as informações são atualizadas */
/* Documentação pesquisada sobre Stateful - https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html*/
class CardAcoes extends StatefulWidget {
  final String iconeAcao;
  final String tituloAcao;
  final String precoAcao;
  final double porcentagemMudanca;

  CardAcoes(
      this.iconeAcao, this.tituloAcao, this.precoAcao, this.porcentagemMudanca);

  @override
  _CardAcoesState createState() => _CardAcoesState(
      this.iconeAcao, this.tituloAcao, this.precoAcao, this.porcentagemMudanca);
}

class _CardAcoesState extends State<CardAcoes> {
  final String iconeAcao;
  final String tituloAcao;
  final String precoAcao;
  final double porcentagemMudanca;

  _CardAcoesState(
      this.iconeAcao, this.tituloAcao, this.precoAcao, this.porcentagemMudanca);

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
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                /*width: 40,
                height: 40,*/
                //margin: EdgeInsets.only(left: 10),
                child:
                    /*Image(
                    image: AssetImage(iconeAcao),
                  )*/
                    CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(iconeAcao),
                ),
              ),
              /* Fim Logo Moeda */

              /* Início Título Moeda */
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      tituloAcao,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  /* Fim Título Moeda */

                  Container(
                    width: 50,
                    height: 20,
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      precoAcao,
                      style: TextStyle(
                          color: Color(0XFF6cd9d8),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: iconeSetaPositivoNegativo(porcentagemMudanca, 15.0),
                  ),
                  Text(
                    porcentagemMudanca.toString() + " %",
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
