import 'dart:convert';
import 'package:aad_oauth/model/config.dart';
import 'package:bobook/component/navbar.dart';
import 'package:flutter/material.dart';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future fetchAzureUserDetails(String accessToken) async {
    http.Response response;
    response = await http.get(
      Uri.parse("https://graph.microsoft.com/v1.0/me"),
      headers: {"Authorization": "Bearer $accessToken"},
    );

    return json.decode(response.body);
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _LoginPageState extends State<LoginPage> {
  static const String clientId = 'd655f867-e2f6-4989-a46f-8d40481631e0';
  static const String redirectUri =
      'msald655f867-e2f6-4989-a46f-8d40481631e0://auth';
  static const String tenantId = 'db1e097e-c263-4891-bad4-9def94d40f1e';

  final Config config = Config(
    tenant: tenantId, // Set this to "common" for multi-tenant apps
    clientId: clientId,
    scope: "User.read",
    redirectUri: redirectUri,
    navigatorKey:
        navigatorKey, // Ensure this key is defined in your main file under MaterialApp.
  );

  Future azureSignInApi(bool redirect) async {
    final AadOAuth oauth = AadOAuth(config);

    config.webUseRedirect = redirect;
    await oauth.login();

    final accessToken = await oauth.getAccessToken();
    if (accessToken != null) {
      final userDetails = await AuthServices.fetchAzureUserDetails(accessToken);
      print('User details: $userDetails');
    } else {
      print('Microsoft Authentication Failed!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 500,
        height: 500,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/mslg.png.png', width: 120),
            const SizedBox(height: 12),
            const Text('Sign In',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            const SizedBox(height: 16),
            const TextField(
                decoration:
                    InputDecoration(hintText: 'Email, Phone, or Skype')),
            const SizedBox(height: 12),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'No account? '),
                  TextSpan(
                      text: 'Create One!',
                      style: TextStyle(color: Colors.blueAccent)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () {},
                child: const Text('Can\'t access yout account?',
                    style: TextStyle(color: Colors.blueAccent))),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
                    decoration: BoxDecoration(color: Colors.grey[400]),
                    child: const Text('Back'),
                  ),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavBar()));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
                    decoration: const BoxDecoration(color: Colors.blueAccent),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
