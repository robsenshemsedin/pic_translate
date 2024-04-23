import 'package:flutter/material.dart';
import 'package:pic_translate/resources/resources.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.lable,
      required this.iconData,
      required this.callback});
  final String lable;
  final IconData iconData;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: callback,
        icon: Icon(iconData),
        label: Text(lable),
        style: AppStyles.customButtonStyle);
  }
}
