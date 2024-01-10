import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_by_pauleen/business_logic/bloc/notes/notes_bloc.dart';
import 'package:notes_by_pauleen/presentation/screens/my_notes_homepage.dart';
import 'package:notes_by_pauleen/presentation/screens/notes_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('notes');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes by Pauleen',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:  BlocProvider(
        create: (context) => NotesBloc()..add(NotesEvent.onFetchNotes()),
        child: MyNotesHomepage()),
    );
  }
}
