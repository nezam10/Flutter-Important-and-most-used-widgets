import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_signin_without_firebase/google_signin/google_signin_api.dart';
import 'package:google_signin_without_firebase/google_signin/my_home_page.dart';

class LoggedInPage extends StatelessWidget {
  final GoogleSignInAccount user;
  const LoggedInPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logged In"),
        actions: [
          TextButton(
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPressed: () async {
              //>>>>>>>>>>>> logout method <<<<<<<<<<<<<<<<//
              await GoogleSignInApi.logout();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your Profile",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 30),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoUrl!),
            ),
            const SizedBox(height: 15),
            Text(
              "Name : " + user.displayName!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Email : " + user.email,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
