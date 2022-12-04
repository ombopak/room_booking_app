import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  late final SharedPreferences _pref;

  static PrefHelper instance = PrefHelper();

  init() async {
    _pref = await SharedPreferences.getInstance();
  }

  String get token {
    return _pref.getString('token') ?? '';
  }

  Future<bool> saveToken(String token) async {
    return await _pref.setString('token', token);
  }

  Future<bool> setFisrtInstall() async {
    return await _pref.setBool('first_install', false);
  }

  bool get isFirstInstall => _pref.getBool('isFirstInstall') ?? true;
}
