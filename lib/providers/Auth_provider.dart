import 'package:lati_marvel/providers/baseProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth_Provider extends BaseProvider {
  bool Authenticated = false;

  initializedAuthProvider() async {
    setBusy(true);
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString("token");

    Authenticated = (token != null);
    setBusy(false);
  }

  login() {}

  logout() {}

  register() {}

  getMe() {}

  refreshToken() {}
}
