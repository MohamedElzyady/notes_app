import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_app_bar.dart';
import 'package:note_app/home/widgets/custom_textField.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Gap(70),
              CustomAppPar(
                title: 'Edit Notes',
                onTaps: () {
                  Navigator.pop(context);
                },
                iconBar: Icon(CupertinoIcons.check_mark),
              ),
              
              Gap(20),
              CustomTextfield(hint: 'Title Notes'),
              Gap(40),
              CustomTextfield(hint: 'Your Notes', maxline: 5),
              Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
