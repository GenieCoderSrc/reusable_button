import 'package:flutter/material.dart';

class VisibilityButton extends StatelessWidget {
  const VisibilityButton(
      {super.key,
      required this.isVisible,
      required this.onPressed,
      this.icon,
      required this.btnTitle});

  final String btnTitle;
  final bool isVisible;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) Icon(icon),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(btnTitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
