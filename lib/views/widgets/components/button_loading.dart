import 'package:flutter/material.dart';

class ButtonLoading extends StatelessWidget {
  const ButtonLoading({
    super.key,
    this.loading = false,
    this.bgColor = Colors.white,
    this.strokeWidth = 2,
    this.width = 14,
    this.height = 14,
  });

  final bool loading;

  final Color? bgColor;

  final double? strokeWidth;

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return !loading
        ? const SizedBox.shrink()
        : Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: width,
            height: height,
            child: CircularProgressIndicator(
              strokeWidth: strokeWidth,
              backgroundColor: bgColor,
            ),
          );
  }
}
