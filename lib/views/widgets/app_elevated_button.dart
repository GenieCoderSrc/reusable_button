import 'package:flutter/material.dart';
import 'package:reusable_button/views/widgets/components/button_loading.dart';

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
    return ElevatedButton(
      onPressed: disableTouchWhenLoading && loading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (loading) {
      return ButtonLoading(loading: true);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (logoPath != null) ...[
          Image.asset(logoPath!, height: 35),
          const SizedBox(width: 8),
        ],
        Text(title, style: TextStyle(color: txtColor)),
      ],
    );
  }
}
