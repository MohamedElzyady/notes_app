import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constans/varuible.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNotes(NoteModel note) async {
    emit(AddNotesLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kvaruabil);
      emit(AddNotesSuccess());
      await noteBox.add(note);
    } catch (e) {
      AddNotesFaliuer(errorMsg: e.toString());
    }
  }
}
