part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.loading() = _Loading;
  const factory NotesState.loaded(List<Notes> notes) = _Loaded;
  const factory NotesState.error(String error) = _Error;
}