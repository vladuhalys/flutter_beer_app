import 'package:flutter_beer_app/core/dto/firebase_dto/firebase_dto_exports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseProvider {
  Future<FirebaseDataState> signInWithEmail(
      String email, String password) async {
    try {
      var result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Future.value(FirebaseDataSuccess<String>(result.user!.email!));
    } on FirebaseAuthException catch (e) {
      return Future.value(FirebaseDataFailed<String>(e.message!));
    }
  }

  Future<FirebaseDataState> signUpWithEmail(
      String email, String password) async {
    try {
      var result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return Future.value(FirebaseDataSuccess<String>(result.user!.email!));
    } on FirebaseAuthException catch (e) {
      return Future.value(FirebaseDataFailed<String>(e.message!));
    }
  }

  Future<FirebaseDataState> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);
      return Future.value(
          FirebaseDataSuccess<GoogleSignInAccount?>(googleUser));
    } on FirebaseAuthException catch (e) {
      return Future.value(FirebaseDataFailed<String>(e.message!));
    }
  }
}
