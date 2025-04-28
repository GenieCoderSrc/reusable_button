import 'package:flutter/material.dart';
import 'package:app_style/app_style.dart';
import 'package:loading_builder/btn_loading.dart';


class AppTxtBtn extends StatelessWidget {
  final String? title;
  final String? btnText;
  final VoidCallback? onPressed;
  final Color? btnTextColor;
  final bool loading;
  final bool disableTouchWhenLoading;
  final MainAxisAlignment mainAxisAlignment;

  const AppTxtBtn({
    super.key,
    this.title,
    this.btnText,
    this.btnTextColor = Colors.blue,
    this.onPressed,
    this.loading = false,
    this.disableTouchWhenLoading = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        if (title != null)
          Text(title!,
              style: AppTxtStyles.kSmallSubTitleTextStyle
                  .copyWith(wordSpacing: -1)),
        if (btnText != null)
          TextButton(
            onPressed: disableTouchWhenLoading && loading ? null : onPressed,
            child: Text(
              btnText!,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: btnTextColor,
                  fontSize: 16.0),
            ),
          ),
        btnLoading(loading: loading),
      ],
    );
  }
}
