/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Controller possui a função convertReais para conversão do valor em moeda brasileira */
import 'package:moedanamao/app/controllers/controllers_app/shared_controller.dart';

/* Objeto Moeda - regras de negócios das moedas Dólar e Euro recebidas no formato JSON */
/* Documentação pesquisada sobre classes em dart - https://dart.dev/guides/language/language-tour */
class Moeda {
  String valorCompra;
  String valorVenda;
  String maximo;
  String minimo;
  double porcentagemVariavel;
  String dataCotacaoMoeda;
  String titulo;
  String urlIconAcao;

  Moeda(this.valorCompra, this.titulo);

  /* Converte um Map com informações em JSON para o objeto Moeda */
  Moeda.fromJson(Map<String, dynamic> json) {
    //Valor de Compra Dólar ou Euro
    if (json != null) {
      /* Converte o preço em formato moeda Reais (R$) */
      valorCompra = convertReais(json['bid'].toString());

      maximo = convertReais(json['high'].toString());

      minimo = convertReais(json['low'].toString());

      porcentagemVariavel = double.parse(json['pctChange'].toString());

      /* Data e hora da última atualização das informações de moedas Dólar e Euro */
      String dataFormatada =
          convertDataHora(DateTime.parse(json["create_date"]));

      dataCotacaoMoeda = dataFormatada;
    } else {
      valorCompra = "0";
      dataCotacaoMoeda = null;
    }
  }
}
