import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {

  // obj
  final _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;

  login() async {
    googleSignInAccount = await _googleSignIn.signIn();

    // call listener
    notifyListeners();
  }

  logout() async {
    // empty after logout
    googleSignInAccount = await _googleSignIn.signOut();

    // call listener
    notifyListeners();
  }
}