import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
          final googleAuth = await googleUser?.authentication;
          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
            idToken: googleAuth?.idToken,
          );
          await FirebaseAuth.instance.signInWithCredential(credential);
        },
        child: Text('Sign In'));
  }
}
