import 'package:first_flutter_app/design/colors.dart';
import 'package:first_flutter_app/design/dimensions.dart';
import 'package:flutter/material.dart';

class AccentButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const AccentButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(width200, height40),
            maximumSize: const Size.fromHeight(height40),
            backgroundColor: primaryColor,
            elevation: elevation0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius20))),
        child: Text(title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: surfaceColor,
                fontSize: fontSize14,
                fontWeight: FontWeight.w600)));
  }
}
