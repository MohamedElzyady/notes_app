import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, this.maxline});
  final String hint;
  final int? maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 17,
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
