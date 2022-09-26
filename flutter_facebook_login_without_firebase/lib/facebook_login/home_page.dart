import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? _userData;
  AccessToken? _accessToken;
  bool _checking = true;

  //
  bool _isLoggedIn = false;
  Map _userObj = {};

  Future<void> _logOut() async {
    await FacebookAuth.instance.logOut();
    _accessToken = null;
    _userData = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Facebook Auth Example'),
        ),
        body: _isLoggedIn
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(_userObj["picture"]["data"]["url"]),
                    const SizedBox(height: 20),
                    Text(_userObj["name"]),
                    const SizedBox(height: 20),
                    Text(_userObj["email"]),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        FacebookAuth.instance.logOut().then((value) {
                          setState(() {
                            _isLoggedIn = false;
                            _userObj = {};
                          });
                        });
                      },
                      child: const Text("Logout"),
                    )
                  ],
                ),
              )
            : Center(
                child: ElevatedButton(
                  child: Text("Login with Facebook"),
                  onPressed: () async {
                    FacebookAuth.instance.login(
                        permissions: ["public_profile", "email"]).then((value) {
                      FacebookAuth.instance.getUserData().then((userData) {
                        setState(() {
                          _isLoggedIn = true;
                          _userObj = userData;
                        });
                      });
                    });
                  },
                ),
              ),
      ),
    );
  }
}
