import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AccountManagerProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future<void> googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);

    notifyListeners();
  }

  Future<String> emailLogin(String email, String password) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      notifyListeners();
      return 'success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'Usuário não encontrado';
      } else if (e.code == 'wrong-password') {
        return 'E-mail ou senha incorreto. Tente novamente';
      } else {
        return 'Ocorreu um erro. Tente novamente';
      }
    }
  }

  Future<String> emailSignIn(String email, String password) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      notifyListeners();
      return 'success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Senha muito fraca';
      } else if (e.code == 'email-already-in-use') {
        return 'E-mail já cadastrado. Tente novamente';
      } else {
        // print(e.code);
        return 'Ocorreu um erro. Tente novamente';
      }
    }
  }
}
