import 'package:mobx/mobx.dart';
import 'package:moedanamao/app/model/influencers/influencer.dart';
import 'package:moedanamao/app/repositories/api_influencers_repository.dart';

part 'influencers_controller.g.dart';

class ControllerInfluencers = _ControllerInfluencers
    with _$ControllerInfluencers;

abstract class _ControllerInfluencers with Store {
  @observable
  ObservableFuture<List<Influencer>> listaInfluencers;

  _ControllerInfluencers() {
    print("entrou no construtor");
    carregarInfluencers();
  }

  @observable
  Influencer influencer;

  @action
  Future<List<Influencer>> getListaInfluencers() async {
    InfluencerRespository repository = new InfluencerRespository();

    List<Influencer> listaInfluencers = await repository.getInfluencer();

    return listaInfluencers;
  }

  @action
  carregarInfluencers() {
    listaInfluencers = getListaInfluencers().asObservable();
  }
}
