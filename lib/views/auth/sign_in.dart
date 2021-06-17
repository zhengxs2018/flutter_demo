import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: const Text('去首页'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            TextButton(
              child: const Text('去注册'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/sign-up');
              },
            ),
          ],
        ),
      ),
    );
  }
}
