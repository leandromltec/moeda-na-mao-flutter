/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Possui funções que são utilizadas em qualquer lugar da aplicação */

/* Biblioteca (package) para formatação de data, valores e localização*/
/* Documentação seguida para package intl - https://pub.dev/packages/intl */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';

/* Função converte valor tipo String em um formato de moeda Real (R$) brasileiro */
/* Função utilizada para conversão de valores das ações e cotações para exibição em moeda brasileira */
String convertReais(String valor) {
  var valorReais = NumberFormat.currency(locale: 'pt', symbol: "R\$")
      .format(double.parse(valor));
  return valorReais;
}

/* Função converte data e hora no formato Brasil */
/* Documentação seguida para utilizar o DateFormat - 
https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html */
String convertDataHora(DateTime data) {
  /*initializeDateFormatting('pt_BR', null);
  var data = DateTime.fromMicrosecondsSinceEpoch(
      dataHora.millisecondsSinceEpoch * 100);*/
  String dataFormatada = data.day.toString() +
      "/" +
      data.month.toString() +
      "/" +
      data.year.toString() +
      " às " +
      data.hour.toString() +
      ":" +
      data.minute.toString();

  return dataFormatada;
}

void compartilharItem(BuildContext contex, dynamic objeto) {
  final String texto = "$objeto";
  final RenderBox box = contex.findRenderObject();
  Share.share(texto,
      subject: objeto,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}

/* isNegative - verifica se o valor é negativo */
/* Documentação utilizada para propriedades da classe double - https://api.dart.dev/stable/2.9.1/dart-core/double-class.html */

Widget iconeSetaPositivoNegativo(double valor, double tamanhoIcone) {
  Icon iconNegativoPositivo;

  if (valor.isNegative) {
    iconNegativoPositivo = Icon(
      Icons.arrow_downward,
      size: tamanhoIcone,
      color: Colors.red,
    );
  } else {
    iconNegativoPositivo = Icon(
      Icons.arrow_upward,
      size: tamanhoIcone,
      color: Colors.green,
    );
  }
  return iconNegativoPositivo;
}

String getDataAtual() {
  DateTime dataCorrente = new DateTime.now();
  DateFormat dataFormato = DateFormat('MM-dd-yyy');
  String dataAtual = dataFormato.format(dataCorrente);

  return dataAtual;
}
