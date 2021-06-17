import 'package:flutter/material.dart';

import './router/route.dart' show DynamicRoute;

import './views/auth/sign_up.dart' show SignUp;
import './views/auth/sign_in.dart' show SignIn;

import './views/portal/splash.dart' show Splash;
import './views/portal/home.dart' show Home;

import './views/product/category.dart' show Category;
import './views/product/item.dart' show Item;

import './views/errors/not_found.dart' show NotFound;

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 动态路由
    List<DynamicRoute> dynamicRoutes = [
      DynamicRoute.create('/item/:id', (BuildContext context) => const Item())
    ];

    return MaterialApp(
      title: 'iHaowu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const Splash(),
        '/sign-up': (BuildContext context) => const SignUp(),
        '/sign-in': (BuildContext context) => const SignIn(),
        '/home': (BuildContext context) => const Home(),
        '/category': (BuildContext context) => const Category(),
      },
      onGenerateRoute: (settings) {
        String path = settings.name ?? '/';

        for (DynamicRoute route in dynamicRoutes) {
          if (route.match(path)) {
            return MaterialPageRoute(
              settings: settings,
              builder: route.builder,
            );
          }
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const NotFound(),
        );
      },
    );
  }
}
