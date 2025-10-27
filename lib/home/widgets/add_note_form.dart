import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_bottom.dart';
import 'package:note_app/home/widgets/custom_textField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, notes;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                setState(() {});
              }
            },
          ),
          Gap(40),
        ],
      ),
    );
  }
}
