/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Interface define os metódos utilizados pela classe AcoesRepository */

/* Objeto Ação */
import 'package:moedanamao/app/model/acoes/acao_model.dart';

abstract class IApiAcoes {
  Future<Acao> getDadosAcao(String tituloAcao, String codigoAcao);
}
