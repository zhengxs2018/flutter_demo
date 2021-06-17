import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              child: const Text('去商品分类'),
              onPressed: () {
                Navigator.of(context).pushNamed('/category');
              },
            ),
            TextButton(
              child: const Text('去详情'),
              onPressed: () {
                Navigator.of(context).pushNamed('/item/1');
              },
            ),
            TextButton(
              child: const Text('去登录22'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/sign-in');
              },
            ),
            TextButton(
              child: const Text('去注册'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/sign-up');
              },
            ),
            TextButton(
              child: const Text('未定义路由'),
              onPressed: () {
                Navigator.of(context).pushNamed('/xxxx');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
