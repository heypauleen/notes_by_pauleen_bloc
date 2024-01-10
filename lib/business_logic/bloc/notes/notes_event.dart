part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  factory NotesEvent.onAddOrUpdateNote({Notes? note}) = _OnAddNote;
  factory NotesEvent.onDeleteNote({int? noteId}) = _OnDeleteNote;
  factory NotesEvent.onFetchNotes() = _OnFetchNotes;
}