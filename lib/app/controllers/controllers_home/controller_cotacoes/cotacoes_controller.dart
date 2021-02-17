import 'package:mobx/mobx.dart';

/* Objeto Moeda */
import 'package:moedanamao/app/model/cotacoes/moeda_model.dart';
import 'package:moedanamao/app/repositories/api_contacoes_respository.dart';
part 'cotacoes_controller.g.dart';

class ControllerCotacoes = _ControllerCotacoes with _$ControllerCotacoes;

abstract class _ControllerCotacoes with Store {
  @observable
  ObservableFuture<List<Moeda>> listaMoedas;

  _ControllerCotacoes() {
    carregarMoedas();
  }

  @observable
  Moeda cotacaoDolar;

  @observable
  Moeda cotacaoEuro;

  @computed
  String get valorCompraDolar => cotacaoDolar.valorCompra;

  @computed
  String get valorCompraEuro => cotacaoEuro.valorCompra;

  @action
  Future<List<Moeda>> getListaMoedas() async {
    MoedaRepository moedaRepository = new MoedaRepository();

    await Future.delayed(Duration(seconds: 1));

    cotacaoDolar = await moedaRepository.getDadosMoeda("USD", "USD-BRL");
    cotacaoDolar.titulo = "Dólar";
    cotacaoDolar.urlIconAcao = "assets/images/icon_dolar.png";

    cotacaoEuro = await moedaRepository.getDadosMoeda("EUR", "EUR-BRL");
    cotacaoEuro.titulo = "Euro";
    cotacaoEuro.urlIconAcao = "assets/images/icon_euro.png";

    return <Moeda>[cotacaoDolar, cotacaoEuro];
  }

  @action
  carregarMoedas() {
    listaMoedas = getListaMoedas().asObservable();
  }
}
