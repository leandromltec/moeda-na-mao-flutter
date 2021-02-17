import 'package:moedanamao/app/interfaces/local_cotacoes_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalCotacoesService implements ILocalCotacoesStorage {
  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future put(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();
    if (value is int) {
      print('e int');
      return shared.setInt(key, value);
    }
    if (value is String) return shared.setString(key, value);
  }
}
