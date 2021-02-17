import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moedanamao/app/controllers/controllers_app/shared_controller.dart';
import 'package:moedanamao/app/controllers/controllers_home/controllers_acoes/acoes_controller.dart';

/* Widget (componente) card que exibe as informações das ações */
import 'package:moedanamao/app/views/components/components_acoes/card_acoes.dart';
import 'package:moedanamao/app/views/components/components_app/carregando_texto.dart';
import 'package:moedanamao/app/views/components/components_app/indicador_loading.dart';

/* Stateless - selecionado este tipo de widget por a página não sofre alterações, apenas respectivos 
components como por exemplo CardAcoes */
class AcoesPage extends StatelessWidget {
  final controllerAcao = ControllerAcoes();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Fonte: B3 - Bolsa de Valores do Brasil",
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ),
                Observer(
                  builder: (_) {
                    if (controllerAcao.listaAcoes.value == null) {
                      return Carregando();
                    } else
                      return Container(
                        child: Text(
                          "Última Atualização - " +
                              controllerAcao
                                  .listaAcoes.value[0].dataAtualizacaoAcao,
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      );
                  },
                ),
              ]),
        ),
        Observer(builder: (_) {
          if (controllerAcao.listaAcoes.value == null) {
            return IndicadorLoading();
          }

          return ListView.builder(
              shrinkWrap: true,
              itemCount: controllerAcao.listaAcoes.value.length,
              itemBuilder: (_, index) {
                if (controllerAcao.listaAcoes.value.length > 0) {
                  return GestureDetector(
                    onLongPress: () {
                      compartilharItem(context,
                          controllerAcao.listaAcoes.value[index].tituloAcao);
                    },
                    child: CardAcoes(
                      controllerAcao.listaAcoes.value[index].urlIconAcao,
                      controllerAcao.listaAcoes.value[index].tituloAcao,
                      controllerAcao.listaAcoes.value[index].precoAcao,
                      controllerAcao
                          .listaAcoes.value[index].porcentagemMudancaAcao,
                    ),
                  );
                } else {
                  return IndicadorLoading();
                }
              });
        }),
      ],
    );
  }
}
