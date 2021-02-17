/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Controller possui a função convertReais para conversão do valor em moeda brasileira */
import 'package:moedanamao/app/controllers/controllers_app/shared_controller.dart';

/* Objeto Ação - regras de negócios das Ações recebidas no formato JSON */
/* Documentação pesquisada sobre classes em dart - https://dart.dev/guides/language/language-tour */
class Acao {
  String tituloAcao;
  String precoAcao;
  String urlIconAcao;
  double porcentagemMudancaAcao;
  String dataAtualizacaoAcao;

  Acao(this.tituloAcao, this.precoAcao, this.urlIconAcao);

  /* Converte um Map com informações em JSON para o objeto Ação */
  Acao.fromJson(Map<String, dynamic> json) {
    /* Preço da Ação */
    if (json["price"] != null)
      /* Converte o preço em formato moeda Reais (R$) */
      precoAcao = convertReais(json["price"].toString());
    else
      precoAcao = "0";

    /* Porcentagem de mudança */
    if (json["change_percent"] != null) {
      porcentagemMudancaAcao = json["change_percent"] as double;
    } else
      porcentagemMudancaAcao = 0;

    /* Data e hora da última atualização das informações da ação */
    if (json["updated_at"] != null) {
      /* Formata a data de atualização para padrão Brasil retornando tipo String */
      /* Definido String para a data de atualização porque será apenas 
      uma informação de exibição para o usuário (GET) */
      String dataFormatada =
          convertDataHora(DateTime.parse(json["updated_at"]));
      dataAtualizacaoAcao = dataFormatada;
    } else
      dataAtualizacaoAcao = null;
  }
}
