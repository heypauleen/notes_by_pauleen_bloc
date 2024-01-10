import 'dart:convert';
import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:notes_by_pauleen/data/models/notes.dart';

class NoteApiService {
  final String _notesBox = 'notes';

  Future<List<Notes>> fetchNotes() async {
    final Box<String> notesBox = await Hive.openBox(_notesBox);
    final notesJson = notesBox.values.toList();
    return notesJson.map((json) => Notes.fromJson(jsonDecode(json))).toList();
  }

  Future<void> addUpdateNote(Notes note) async {
    final Box<String> notesBox = await Hive.openBox(_notesBox);
    int? noteId;
    noteId = note.id ?? DateTime.now().microsecond + DateTime.now().millisecond;
    final noteJson = jsonEncode(Notes(id: noteId, title: note.title, content: note.content));
    notesBox.put(noteId, noteJson);
  }

  Future<void> deleteNote(int noteId) async {
    final Box<String> notesBox = await Hive.openBox(_notesBox);
    notesBox.delete(noteId);
  }
}
