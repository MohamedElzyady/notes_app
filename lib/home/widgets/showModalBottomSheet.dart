import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_bottom.dart';
import 'package:note_app/home/widgets/custom_textField.dart';

class Showmodalbottomsheet extends StatefulWidget {
  const Showmodalbottomsheet({super.key});

  @override
  State<Showmodalbottomsheet> createState() => _ShowmodalbottomsheetState();
}

class _ShowmodalbottomsheetState extends State<Showmodalbottomsheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              Gap(20),
              CustomTextfield(
                onSaved: (value) {
                  title = value;
                },
                hint: 'Title Notes',
              ),
              Gap(40),
              CustomTextfield(
                onSaved: (value) {
                  notes = value;
                },
                hint: 'Your Notes',
                maxline: 5,
              ),
              Gap(40),
              CustomBottom(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
              ),
              Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
