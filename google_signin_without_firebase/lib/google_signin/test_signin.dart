// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// GoogleSignInAccount? _googleUser;
// Future<void> _signInGoogle() async {
//   try {
//     GoogleSignIn googleSignIn = GoogleSignIn(
//       scopes: [
//         'email',
//         'https://www.googleapis.com/auth/contacts.readonly',
//       ],
//     );

//     /// if previously signed in, it will signin silently
//     /// if not, the signin dialog/login page will pop up
//     _googleUser =
//         await googleSignIn.signInSilently() ?? await googleSignIn.signIn();
//   } catch (e) {
//     debugPrint(e.toString());
//   }
// }

// ///sign out from google
// Future<void> signOut() async {
//   GoogleSignIn googleSignIn = GoogleSignIn();
//   await googleSignIn.signOut();
//   _googleUser = null;
// }
