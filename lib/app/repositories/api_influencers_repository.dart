import 'package:moedanamao/app/model/influencers/influencer.dart';
import 'package:moedanamao/app/repositories/api_influencers_interface.dart';
import 'package:moedanamao/app/services/client_http_services.dart';

class InfluencerRespository implements IInfluencers {
  @override
  Future<List<Influencer>> getInfluencer() async {
    final ClientHttpService clientInfluencer = new ClientHttpService();

    final urlApiInfluencer = "ulr da api acessando banco do mongo db";

    var jsonInfluencer = await clientInfluencer.get(urlApiInfluencer) as List;

    List<Influencer> listInfluencer = new List<Influencer>();

    for (var itemInfluencer in jsonInfluencer) {
      //Influencer influencer = new Influencer.fromJson(itemInfluencer);

      listInfluencer.add(Influencer.fromJson(itemInfluencer));
    }

    return listInfluencer;
  }
}
