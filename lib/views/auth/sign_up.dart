import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SignUp builds its own Navigator which ends up being a nested
    // Navigator in our app.
    return Navigator(
      initialRoute: 'sign-up/personal_info',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'sign-up/personal_info':
            // Assume CollectPersonalInfo collects personal info and then
            // navigates to 'sign-up/choose_credentials'.
            builder = (BuildContext context) => const CollectPersonalInfo();
            break;
          case 'sign-up/choose_credentials':
            // Assume ChooseCredentials collects new credentials and then
            // invokes 'onsign-upComplete()'.
            builder = (BuildContext _) => ChooseCredentials(
                  onSignUpComplete: () {
                    // Referencing Navigator.of(context) from here refers to the
                    // top level Navigator because SignUp is above the
                    // nested Navigator that it created. Therefore, this pop()
                    // will pop the entire "sign up" journey and return to the
                    // "/" route, AKA Home.
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                );
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}

class CollectPersonalInfo extends StatelessWidget {
  const CollectPersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline4!,
      child: GestureDetector(
        onTap: () {
          // This moves from the personal info  to the credentials ,
          // replacing this  with that one.
          Navigator.of(context)
              .pushReplacementNamed('sign-up/choose_credentials');
        },
        child: Container(
          color: Colors.lightBlue,
          alignment: Alignment.center,
          child: const Text('Collect Personal Info '),
        ),
      ),
    );
  }
}

class ChooseCredentials extends StatelessWidget {
  const ChooseCredentials({
    Key? key,
    required this.onSignUpComplete,
  }) : super(key: key);

  final VoidCallback onSignUpComplete;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSignUpComplete,
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headline4!,
        child: Container(
          color: Colors.pinkAccent,
          alignment: Alignment.center,
          child: const Text('Choose Credentials '),
        ),
      ),
    );
  }
}
