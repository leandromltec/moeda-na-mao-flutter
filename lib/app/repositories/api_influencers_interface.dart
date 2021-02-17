import 'package:moedanamao/app/model/influencers/influencer.dart';

abstract class IInfluencers {
  Future<List<Influencer>> getInfluencer(
      /* String nomeInfluencer,
      String url_logoInfluencer,
      String url_youtubeInfluencer,
      String url_instagramInfluencer,
      String url_facebookInfluencer*/
      );
}
