import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_app_bar.dart';
import 'package:note_app/home/widgets/custom_listView.dart';
import 'package:note_app/home/widgets/floatingActionButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:Floatingactionbutton(),
      // backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            Gap(70),
            CustomAppPar(title: 'Notes',),
            Gap(20),
            Expanded(child: CustomListview()),
          ],
        ),
      ),
    );
  }
}
