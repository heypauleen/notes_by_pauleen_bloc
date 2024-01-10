import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_by_pauleen/data/dataproviders/note_api_service.dart';
import 'package:notes_by_pauleen/data/models/notes.dart';

part 'notes_state.dart';
part 'notes_event.dart';
part 'notes_bloc.freezed.dart';

class NotesBloc extends Bloc<NotesEvent,NotesState>{
   final NoteApiService apiService = NoteApiService();
  NotesBloc() : super(const NotesState.loading()){
    on<_OnAddNote>(_onAddNote);
    on<_OnDeleteNote>(_onDeleteNote);
    on<_OnFetchNotes>(_onFetchNotes);
  }
  FutureOr<void> _onAddNote(_OnAddNote event, Emitter<NotesState> emit) async {
    emit(const NotesState.loading());
    try {
      await apiService.addUpdateNote(event.note!);
      add(NotesEvent.onFetchNotes());
    }catch (e){
      log(e.toString());
      emit(NotesState.error(e.toString()));
    }
  }
   FutureOr<void> _onDeleteNote(_OnDeleteNote event, Emitter<NotesState> emit) async {
    emit(const NotesState.loading());
     try {
      await apiService.deleteNote(event.noteId!);
      add(NotesEvent.onFetchNotes());
    }catch (e){
      log(e.toString());
      emit(NotesState.error(e.toString()));
    }
  }
  FutureOr<void> _onFetchNotes(_OnFetchNotes event, Emitter<NotesState> emit) async {
    emit(const NotesState.loading());
     try {
      final notes = await apiService.fetchNotes();
      emit(NotesState.loaded(notes));
    }catch (e){
      log(e.toString());
      emit(NotesState.error(e.toString()));
    }
  }
}