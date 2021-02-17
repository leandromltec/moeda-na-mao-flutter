import 'package:moedanamao/app/model/cotacoes/moeda_model.dart';

abstract class ICotacoes {
  Future<Moeda> getDadosMoeda(String siglaMoeda, String codigoMoeda);
}
