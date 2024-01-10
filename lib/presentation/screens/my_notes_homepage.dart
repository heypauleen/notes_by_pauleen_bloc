import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:notes_by_pauleen/business_logic/bloc/notes/notes_bloc.dart';
import 'package:notes_by_pauleen/data/models/notes.dart';
import 'package:notes_by_pauleen/presentation/constants/enums.dart';
import 'package:notes_by_pauleen/presentation/screens/notes_page.dart';
import 'package:notes_by_pauleen/presentation/widgets/note_card.dart';

class MyNotesHomepage extends StatelessWidget {
  const MyNotesHomepage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        title: const Text('Notes'),
        backgroundColor: Colors.pink,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<NotesBloc>().add(NotesEvent.onFetchNotes());
        },
        color: Colors.pink,
        child: BlocBuilder<NotesBloc, NotesState>(
          builder: (context, state) {
            return _notesListView(context, state);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  NotesPage(
                title: 'Create Note',
                mode: NotePageMode.create,
              ),
            ),
          ).then((value) => context.read<NotesBloc>().add(NotesEvent.onFetchNotes()));
        },
        backgroundColor: Colors.pink,
        tooltip: 'Create Note',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _notesListView(BuildContext context, NotesState state){
    return state.when(
      loading: () => const Center(child: CircularProgressIndicator(color: Colors.pink,)),
      loaded: (List<Notes> notes) {
        return notes.isNotEmpty
        ? ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final Notes note = notes[index];
            return NoteCard(
              note: note,
            );
          },
        ) : const Center(child: Text('''You haven't created any notes yet.''', style: TextStyle(color: Colors.grey),));
      },
      error: (String error) => Center(child: Text('Error: $error')),
    );
  }

}