import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final double? size;
  const CustomIcon(
      {Key? key, @required this.icon, @required this.iconColor, this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
      size: size,
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final double? size;
  final Function? function;

  const CustomIconButton(
      {Key? key, this.icon, this.iconColor, this.size, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (() {}),
      icon: CustomIcon(
        icon: icon,
        size: size,
        iconColor: iconColor,
      ),
    );
  }
}
