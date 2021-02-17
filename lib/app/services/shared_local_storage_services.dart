import 'package:moedanamao/app/interfaces/shared_local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalStorage implements ILocalStorage {
  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    shared.remove(key);
  }

  @override
  Future getValor(String key) async {
    var shared = await SharedPreferences.getInstance();
    shared.get(key);

    print(shared.get(key).toString());
  }

  @override
  Future put(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();

    if (value is bool) shared.setBool(key, value);

    if (value is String) shared.setString(key, value);

    if (value is int) {}
  }
}
