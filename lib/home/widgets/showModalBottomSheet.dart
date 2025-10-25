import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_textField.dart';

class Showmodalbottomsheet extends StatelessWidget {
  const Showmodalbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          Gap(20),
          CustomTextfield(hint: 'Title Notes'),
          Gap(40),
          CustomTextfield(hint: 'Your Notes', maxline: 5),
        ],
      ),
    );
  }
}
