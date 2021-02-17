abstract class ILocalStorage {
  Future getValor(String key);
  Future delete(String key);
  Future put(String key, dynamic value);
}
