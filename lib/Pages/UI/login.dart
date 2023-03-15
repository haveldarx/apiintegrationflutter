import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:interview2/Pages/UI/homePage.dart';
import 'package:interview2/api/auth_cred.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController unameController = TextEditingController();
  TextEditingController pwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(16, 93, 56, 1),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 29),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: unameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Username',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: pwordController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  Auth_cred auth_cred = Auth_cred();
                  bool login = await auth_cred.loginApi(
                      unameController.text, pwordController.text, context);
                  if (login == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    final snackBar = SnackBar(
                      content: const Text('Login Failed'),
                      backgroundColor: (Colors.black12),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Text('Login'))
          ]),
        ),
      ),
    );
  }
}
