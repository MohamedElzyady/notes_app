import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/home/widgets/custom_app_bar.dart';
import 'package:note_app/home/widgets/notes_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(children: [Gap(70), AppPar(), Gap(20), MyWidget()]),
      ),
    );
  }
}
