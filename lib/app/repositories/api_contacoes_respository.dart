import 'package:moedanamao/app/model/cotacoes/moeda_model.dart';
import 'package:moedanamao/app/repositories/api_contacoes_interfacae.dart';
import 'package:moedanamao/app/services/client_http_services.dart';

class MoedaRepository implements ICotacoes {
  @override
  Future<Moeda> getDadosMoeda(String siglaMoeda, String codigoMoeda) async {
    final ClientHttpService clientMoeda = new ClientHttpService();

    //String dataAtual = getDataAtual();

    /*final urlAPICotacao =
        "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaDia(moeda=@moeda,dataCotacao=@dataCotacao)?" +
            "@moeda=%27" +
            codigoMoeda +
            "%27" +
            "&@dataCotacao=%27" +
            "08-28-2020" +
            "%27&\$skip=0&\$format=json&\$select=cotacaoCompra,cotacaoVenda,dataHoraCotacao";*/

    final urlAPICotacao =
        "https://economia.awesomeapi.com.br/all/" + codigoMoeda;

    var jsonMoeda = await clientMoeda.get(urlAPICotacao);

    Moeda moeda = Moeda.fromJson(jsonMoeda[siglaMoeda]);

    return moeda;
  }
}
