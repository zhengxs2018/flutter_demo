import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('页面不存在'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('返回首页'),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        ),
      ),
    );
  }
}
