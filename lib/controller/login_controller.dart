import 'package:flutter/cupertino.dart';
import 'package:flutter_money_tracker/models/user_details.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController with ChangeNotifier {
  // obj
  final _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  UserDetails? userDetails;

  // func for google login
  googleLogin() async {
    googleSignInAccount = await _googleSignIn.signIn();

    // insert val to userDetails model
    userDetails = UserDetails(
      displayName: googleSignInAccount!.displayName,
      email: googleSignInAccount!.email,
      photoURL: googleSignInAccount!.photoUrl,
    );

    notifyListeners();
  }

  logOut() async {
      // empty after logout
      googleSignInAccount = await _googleSignIn.signOut();

      userDetails = null;

      // call listener
      notifyListeners();
    }
}
