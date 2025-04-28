import 'package:flutter/material.dart';
import 'package:loading_builder/btn_loading.dart';


class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final bool loading;
  final bool disableTouchWhenLoading;
  final Color? bgColor;
  final Color? txtColor;
  final String? logoPath;


  const AppButton({
    super.key,
    this.onPressed,
    required this.title,
    this.loading = false,
    this.disableTouchWhenLoading = false,
    this.bgColor,
    this.txtColor,
    this.logoPath,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: disableTouchWhenLoading && loading ? null : onPressed,
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(bgColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            if (logoPath == null)
              Container()
            else
              Image(image: AssetImage(logoPath!), height: 35.0),
            Text(title, style: TextStyle(color: txtColor)),
            btnLoading(loading: loading)
          ],
        ),
      ),
    );
  }
}
