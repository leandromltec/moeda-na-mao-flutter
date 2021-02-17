// I (i maiúsculo define classe como Interface)
abstract class ILocalCotacoesStorage {
  Future get(String key);
  Future delete(String key);
  Future put(String key, dynamic value);
}
