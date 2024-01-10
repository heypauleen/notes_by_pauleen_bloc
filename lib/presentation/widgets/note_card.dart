import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:notes_by_pauleen/business_logic/bloc/notes/notes_bloc.dart';
import 'package:notes_by_pauleen/data/models/notes.dart';
import 'package:notes_by_pauleen/presentation/constants/enums.dart';
import 'package:notes_by_pauleen/presentation/screens/notes_page.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key, required this.note})
      : super(key: key);
  final Notes note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [BoxShadow(color: Colors.grey)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
                    note.title,
                    style:  TextStyle(
                      color: Colors.pink[800],
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 9.0),
                  Text(
                    note.content,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                  ),
              ],
              ),
            ),
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(child: Icon(Icons.remove_red_eye_outlined, size: 20,color: Colors.grey[400]),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  NotesPage(
                          note: note,
                          title: 'View Note',
                          mode: NotePageMode.view,
                        ),
                      ),
                    );
                  },
                ),
                GestureDetector(child: Icon(Icons.edit,size: 20,color: Colors.grey[400]),
                  onTap: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  NotesPage(
                          note: note,
                          title: 'Edit Note',
                          mode: NotePageMode.edit,
                        ),
                      ),
                    ).then((value) => context.read<NotesBloc>().add(NotesEvent.onFetchNotes()));
                  },
                ),
                
                GestureDetector(child: Icon(Icons.delete,size: 20,color: Colors.grey[400]),
                  onTap: (){
                    _showDeleteConfirmationDialog(context, note.id!);
                    context.read<NotesBloc>().add(NotesEvent.onFetchNotes());
                  },
                ),
              ],
            ),
            const SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
  void _showDeleteConfirmationDialog(BuildContext context, int noteId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content: const Text('Are you sure you want to delete this note?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _deleteNoteAndShowToast(context, noteId);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _deleteNoteAndShowToast(BuildContext context, int noteId) {
    
     BlocProvider<NotesBloc>.value(
        value: NotesBloc()..add(NotesEvent.onDeleteNote(noteId: noteId)));
    Fluttertoast.showToast(
      msg: 'Note deleted successfully. Please pull to refresh.',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white,
    );
   
    Navigator.pop(context);
  }
}