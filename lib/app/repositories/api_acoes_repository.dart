/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Classe acessa informações externas como requisições utilizando API REST */

/* Objeto Ação */
import 'package:moedanamao/app/model/acoes/acao_model.dart';
/* Interface de contrato com IApiAcoes*/
import 'package:moedanamao/app/repositories/api_acoes_repository_interface.dart';
/* Serviço de requisição http */
import 'package:moedanamao/app/services/client_http_services.dart';

class AcoesRepository implements IApiAcoes {
  @override
  Future<Acao> getDadosAcao(String titulo, String codigoAcao) async {
    final ClientHttpService client = new ClientHttpService();

    /* Função get acessa API através da URL de ações B3 */
    var json = await client.get(
        "https://api.hgbrasil.com/finance/stock_price?key=5611c44e&symbol=" +
            codigoAcao);

    /* Objeto Ação recebe o valor retornado da API */
    /* Parâmetro codigoAcao é o código da ação na B3. Ex: MGLU3 é o código de Magazine Luiza */
    /* toUpperCase - converte parâmetro codigoAcao para caixa alta (tipografia letras maiúsculas) */
    Acao acao = Acao.fromJson(json["results"][codigoAcao.toUpperCase()]);

    /* Título da Ação */
    acao.tituloAcao = titulo;

    /* URL do icone referene a ação na pasta assets\images */
    /* Assets - pasta superior possui arquivos que serão incluídos com o aplitacito */
    /* Documentação pesquisada para aplicação das imagens em assets -
    https://flutter.dev/docs/development/ui/assets-and-images */
    /* Padrão estabelecido de icon (icone) seguindo de _ (underline) concatenado ao codigo da ação */
    acao.urlIconAcao = "assets/images/icon_" + codigoAcao + ".png";

    return acao;
  }
}
