import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    this.maxline,
    this.onSaved,
  });
  final String hint;
  final int? maxline;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      cursorHeight: 17,
      validator: (value) {
        if (value != null && value.isNotEmpty) {
          return null;
        } else {
          return 'field is required';
        }
      },
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,

        hintStyle: TextStyle(fontFamily: 'RobotoSlab'),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
