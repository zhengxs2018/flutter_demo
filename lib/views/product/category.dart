import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品分类'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('去详情页'),
          onPressed: () {
            Navigator.of(context).pushNamed('/item/1');
          },
        ),
      ),
    );
  }
}
