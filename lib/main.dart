import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constans/varuible.dart';
import 'package:note_app/cubit/cubit/add_notes_cubit.dart';
import 'package:note_app/home/home.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kvaruabil);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNotesCubit()),

        // BlocProvider(create: (context) => AddNotesCubit()),
      ],

      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Retro'),
        debugShowCheckedModeBanner: false,
        title: 'Note App',
        home: const Home(),
      ),
    );
  }
}
