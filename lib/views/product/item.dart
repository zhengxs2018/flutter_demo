import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('详情页'),
      ),
      body: const Center(
        child: Text(
          '开发中',
        ),
      ),
    );
  }
}
