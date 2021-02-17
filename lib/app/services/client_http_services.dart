/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Serviço de acesso a requisição HTTP retornando a um arquivo do tipo JSON */

/* Biblioteca (package) para requisição HTTP */
/* Documentação seguida para package http - https://pub.dev/packages/http */
import 'package:http/http.dart' as http;

/* Biblioteca (package) para converter o corpo da resposta HTTP no formato JSON */
/* Documentação seguida da biblioteca dar:convert - https://api.dart.dev/stable/2.9.1/dart-convert/dart-convert-library.html */
import 'dart:convert';

/* Interface contrato com o IClientHTTPService */
import 'package:moedanamao/app/interfaces/clienthttp_interface.dart';

/* Classe ClientHTTPService receberá a implementação de IClientHttpService (contrato) */
class ClientHttpService implements IClientHttpService {
  @override
  Future get(String urlAPI) async {
    /* Metódo get para retorno dos dados conforme o parâmetro de url da API a ser acessada */
    final response = await http.get(urlAPI);

    /* Caso não obtenha sucesso no retorno da requisição GET, entra na exceção */
    /* 200 - Código valor padrão de sucesso para API REST */
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      /* Obtendo sucesso (código 200) a variável recebe o corpo da requisição get
      já sendo convertida em um formato JSON */
      var dados = json.decode(response.body);

      return dados;
    }
  }
}
