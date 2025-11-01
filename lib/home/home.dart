import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:note_app/constans/varuible.dart';
import 'package:note_app/cubit/cubit/notes_cubit.dart';
import 'package:note_app/home/widgets/custom_app_bar.dart';
import 'package:note_app/home/widgets/custom_listView.dart';
import 'package:note_app/home/widgets/floatingActionButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Floatingactionbutton(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Gap(70),
              CustomAppPar(title: kvaruabil),
              Gap(20),
              Expanded(child: CustomListview()),
            ],
          ),
        ),
      ),
    );
  }
}
