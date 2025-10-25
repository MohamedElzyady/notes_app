import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_app_bar.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
