import 'package:droidconke2020_flutter/services/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc {
  static const USER_KEY = 'user';
  static const TOKEN_KEY = 'token';

  final _loading = BehaviorSubject.seeded(false);
  final _authenticated = BehaviorSubject<bool>();

  Stream<bool> get authenticated => _authenticated.stream;

  Stream<bool> get loading => _loading.stream;

  AuthBloc() {
    _init();
  }

  _init() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var token = _prefs.getString(TOKEN_KEY);
    if (token == null) _authenticated.sink.add(false);
  }

  signInWithGoogle() async {
    try {
      _loading.sink.add(true);
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      var response =
          await AuthService.socialLogin(accessToken: googleAuth.accessToken);
      AuthService.setToken(response['token']);
      _authenticated.sink.add(true);
    } catch (e) {
      throw e;
    } finally {
      _loading.sink.add(false);
    }
  }

  signOut() {
    AuthService.clearToken();
    _authenticated.sink.add(false);
  }

  dispose() {
    _loading.close();
    _authenticated.close();
  }
}
