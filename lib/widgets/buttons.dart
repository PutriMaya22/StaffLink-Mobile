import 'package:flutter/material.dart';
import 'package:flutter_banking_app/utils/size_config.dart';
import 'package:flutter_banking_app/utils/styles.dart';

Widget elevatedButton({
  required BuildContext context,
  required VoidCallback callback,
  required String text,
  Color? color,
}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: callback,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Styles.primaryColor, // ✅ diperbaiki
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: const TextStyle(
          fontFamily: 'DMSans',
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
    ),
  );
}

Widget outlinedButton({
  required BuildContext context,
  required VoidCallback callback,
  required Widget child,
  String? color,
}) {
  return OutlinedButton(
    onPressed: callback,
    child: child,
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Styles.primaryColor, // ✅ diperbaiki
      elevation: 0,
      side: BorderSide(color: Colors.grey.shade400, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
    ),
  );
}
