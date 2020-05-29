import 'package:droidconke2020_flutter/models/current_user.dart';
import 'package:droidconke2020_flutter/services/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    var response =
        await AuthService.socialLogin(accessToken: googleAuth.accessToken);
    return CurrentUser.fromJson(response);
  }
}
