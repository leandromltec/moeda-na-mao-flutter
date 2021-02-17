/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Controller Ações é responsável pelo gerencimanto da lista de ações 
vindas da API JSON da Bolsa de Valores B3 */
/* Utiliza a gerencia de estado MOBX para verificar se a informação de alguma ação
sofreu modificação e  atualiza na lista de Ações */

/* Bibliotca (package) mobx para gerencia de estado */
import 'package:mobx/mobx.dart';

/* Objeto Ação */
import 'package:moedanamao/app/model/acoes/acao_model.dart';

/* Informações externas da API JSON para o objeto Ação */
import 'package:moedanamao/app/repositories/api_acoes_repository.dart';
part 'acoes_controller.g.dart';

class ControllerAcoes = _ControllerAcoes with _$ControllerAcoes;

abstract class _ControllerAcoes with Store {
  /* Construtor executa função de carregamento da lista de ações */

  @observable
  ObservableFuture<List<Acao>> listaAcoes;

  _ControllerAcoes() {
    carregarAcoes();
  }

  @observable
  Acao acaoMagazineLuiza;

  @observable
  Acao acaoItauHoling;

  @observable
  Acao acaoB3;

  @observable
  Acao acaoRenner;

  @observable
  Acao acaoVale;

  //ObservableList<Acao> listaAcoes = ObservableList<Acao>.of([]);

  @action
  Future<List<Acao>> getListaAcoes() async {
    AcoesRepository repository = new AcoesRepository();

    acaoMagazineLuiza =
        await repository.getDadosAcao("Magazine Luiza S.A. (MGLU3)", "mglu3");
    //listaAcoes.add(acaoMagazineLuiza);

    acaoItauHoling = await repository.getDadosAcao(
        "Itaú Unibanco Holding S.A. (ITUB4)", "itub4");
    //listaAcoes.add(acaoItauHoling);

    acaoB3 = await repository.getDadosAcao(
        "B3 S.A. - Brasil, Bolsa, Balcão (B3SA3) ", "b3sa3");
    //listaAcoes.add(acaoB3);

    acaoRenner =
        await repository.getDadosAcao("Lojas Renner S.A. (LREN3) ", "lren3");
    //listaAcoes.add(acaoRenner);

    acaoVale = await repository.getDadosAcao("Vale S.A. (VALE3) ", "vale3");
    //listaAcoes.add(acaoVale);

    return <Acao>[
      acaoMagazineLuiza,
      acaoItauHoling,
      acaoB3,
      acaoRenner,
      acaoVale
    ];
  }

  @action
  carregarAcoes() {
    listaAcoes = getListaAcoes().asObservable();
  }
}
