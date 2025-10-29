import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:note_app/cubit/cubit/add_notes_cubit.dart';
import 'package:note_app/home/widgets/custom_bottom.dart';
import 'package:note_app/home/widgets/custom_textField.dart';
import 'package:note_app/models/note_model.dart';

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
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomBottom(
                isLodaing: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      color: Colors.blue.value,
                      date: DateTime.now().toString(),
                      notes: notes!,
                      title: title!,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNotes(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          Gap(40),
        ],
      ),
    );
  }
}
