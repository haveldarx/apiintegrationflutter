import 'package:flutter/material.dart';
import '../Constants/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function? page;
  final String? text;
  final Color? bgcolor;
  final TextStyle? textStyle;
  const CustomElevatedButton({Key? key, this.page, this.text, this.bgcolor = Themes.background, this.textStyle= colorTextStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor, // background
        onPrimary: Themes.primary, // foreground
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              20), // <-- Radius
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 5, horizontal: 14),
        child: Text(
          text!,
          style: textStyle,
        ),
      ),
    );
  }
}
