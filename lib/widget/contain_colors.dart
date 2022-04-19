import 'package:flutter/material.dart';
import 'package:shop_app_ui/widget/colors.dart';

class ColorDort extends StatelessWidget {
  ColorDort(
      {Key? key,
      required this.color,
      required this.isActive,
      required this.isPass})
      : super(key: key);
  final Color color;
  bool isActive;
  final VoidCallback isPass;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isPass,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? primaryColor : Colors.transparent,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
