
import 'package:flutter/material.dart';

///Text form Fields with custom design and values
class TextFormFields extends StatelessWidget {
  final IconData? icon;
  final String? labelText;
  final String? labelHint;
  final Function(String)? validator;
  final Function(String)? onChanged;
  final int? maxLength;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;


  const TextFormFields(
      {Key? key,
      this.labelText,
      this.labelHint,
      this.validator,
      this.onChanged,
      this.icon,
      this.maxLength,
      this.textEditingController,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      controller: textEditingController,
      maxLength: maxLength,
      keyboardType: keyboardType,
      onChanged: onChanged,
      

      decoration: InputDecoration(
        counterText: "",
        prefixIcon: Icon(icon, color: Colors.black54),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black45,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
