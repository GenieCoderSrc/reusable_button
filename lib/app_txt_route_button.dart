import 'package:flutter/material.dart';

class AppTxtRouteButton extends StatelessWidget {
  final String title;
  final String btnText;
  final String route;
  final Color btnTextColor;
  final bool pop;
  final Object? arguments;

  const AppTxtRouteButton({
    super.key,
    this.title = '',
    this.btnText = '',
    this.btnTextColor = Colors.blue,
    this.route = 'Invalid Route',
    this.pop = false,
    this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        TextButton(
          onPressed:
              () =>
                  pop
                      ? Navigator.pushReplacementNamed(
                        context,
                        route,
                        arguments: arguments,
                      )
                      : Navigator.pushNamed(context, route),
          child: Text(
            btnText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: btnTextColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
