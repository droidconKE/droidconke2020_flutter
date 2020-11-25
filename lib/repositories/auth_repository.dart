import 'package:droidconke2020_flutter/models/current_user.dart';
import 'package:droidconke2020_flutter/services/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  Future<CurrentUser> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser.authentication;
    var response =
        await AuthService.socialLogin(accessToken: googleAuth.accessToken);
    return CurrentUser.fromJson(response);
  }
}
