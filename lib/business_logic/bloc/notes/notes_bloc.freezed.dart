// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Notes> notes) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res> implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  final NotesState _value;
  // ignore: unused_field
  final $Res Function(NotesState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Notes> notes) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({List<Notes> notes});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$_Loaded(
      notes == freezed
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Notes>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Notes> notes) : _notes = notes;

  final List<Notes> _notes;
  @override
  List<Notes> get notes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NotesState.loaded(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Notes> notes) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NotesState {
  const factory _Loaded(final List<Notes> notes) = _$_Loaded;

  List<Notes> get notes;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NotesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Notes> notes) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Notes> notes)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotesState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notes? note) onAddOrUpdateNote,
    required TResult Function(int? noteId) onDeleteNote,
    required TResult Function() onFetchNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAddNote value) onAddOrUpdateNote,
    required TResult Function(_OnDeleteNote value) onDeleteNote,
    required TResult Function(_OnFetchNotes value) onFetchNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res> implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  final NotesEvent _value;
  // ignore: unused_field
  final $Res Function(NotesEvent) _then;
}

/// @nodoc
abstract class _$$_OnAddNoteCopyWith<$Res> {
  factory _$$_OnAddNoteCopyWith(
          _$_OnAddNote value, $Res Function(_$_OnAddNote) then) =
      __$$_OnAddNoteCopyWithImpl<$Res>;
  $Res call({Notes? note});

  $NotesCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_OnAddNoteCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$_OnAddNoteCopyWith<$Res> {
  __$$_OnAddNoteCopyWithImpl(
      _$_OnAddNote _value, $Res Function(_$_OnAddNote) _then)
      : super(_value, (v) => _then(v as _$_OnAddNote));

  @override
  _$_OnAddNote get _value => super._value as _$_OnAddNote;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$_OnAddNote(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Notes?,
    ));
  }

  @override
  $NotesCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NotesCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_OnAddNote implements _OnAddNote {
  _$_OnAddNote({this.note});

  @override
  final Notes? note;

  @override
  String toString() {
    return 'NotesEvent.onAddOrUpdateNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnAddNote &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$_OnAddNoteCopyWith<_$_OnAddNote> get copyWith =>
      __$$_OnAddNoteCopyWithImpl<_$_OnAddNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notes? note) onAddOrUpdateNote,
    required TResult Function(int? noteId) onDeleteNote,
    required TResult Function() onFetchNotes,
  }) {
    return onAddOrUpdateNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
  }) {
    return onAddOrUpdateNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
    required TResult orElse(),
  }) {
    if (onAddOrUpdateNote != null) {
      return onAddOrUpdateNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAddNote value) onAddOrUpdateNote,
    required TResult Function(_OnDeleteNote value) onDeleteNote,
    required TResult Function(_OnFetchNotes value) onFetchNotes,
  }) {
    return onAddOrUpdateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
  }) {
    return onAddOrUpdateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
    required TResult orElse(),
  }) {
    if (onAddOrUpdateNote != null) {
      return onAddOrUpdateNote(this);
    }
    return orElse();
  }
}

abstract class _OnAddNote implements NotesEvent {
  factory _OnAddNote({final Notes? note}) = _$_OnAddNote;

  Notes? get note;
  @JsonKey(ignore: true)
  _$$_OnAddNoteCopyWith<_$_OnAddNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnDeleteNoteCopyWith<$Res> {
  factory _$$_OnDeleteNoteCopyWith(
          _$_OnDeleteNote value, $Res Function(_$_OnDeleteNote) then) =
      __$$_OnDeleteNoteCopyWithImpl<$Res>;
  $Res call({int? noteId});
}

/// @nodoc
class __$$_OnDeleteNoteCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$_OnDeleteNoteCopyWith<$Res> {
  __$$_OnDeleteNoteCopyWithImpl(
      _$_OnDeleteNote _value, $Res Function(_$_OnDeleteNote) _then)
      : super(_value, (v) => _then(v as _$_OnDeleteNote));

  @override
  _$_OnDeleteNote get _value => super._value as _$_OnDeleteNote;

  @override
  $Res call({
    Object? noteId = freezed,
  }) {
    return _then(_$_OnDeleteNote(
      noteId: noteId == freezed
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_OnDeleteNote implements _OnDeleteNote {
  _$_OnDeleteNote({this.noteId});

  @override
  final int? noteId;

  @override
  String toString() {
    return 'NotesEvent.onDeleteNote(noteId: $noteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnDeleteNote &&
            const DeepCollectionEquality().equals(other.noteId, noteId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(noteId));

  @JsonKey(ignore: true)
  @override
  _$$_OnDeleteNoteCopyWith<_$_OnDeleteNote> get copyWith =>
      __$$_OnDeleteNoteCopyWithImpl<_$_OnDeleteNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notes? note) onAddOrUpdateNote,
    required TResult Function(int? noteId) onDeleteNote,
    required TResult Function() onFetchNotes,
  }) {
    return onDeleteNote(noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
  }) {
    return onDeleteNote?.call(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
    required TResult orElse(),
  }) {
    if (onDeleteNote != null) {
      return onDeleteNote(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAddNote value) onAddOrUpdateNote,
    required TResult Function(_OnDeleteNote value) onDeleteNote,
    required TResult Function(_OnFetchNotes value) onFetchNotes,
  }) {
    return onDeleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
  }) {
    return onDeleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
    required TResult orElse(),
  }) {
    if (onDeleteNote != null) {
      return onDeleteNote(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteNote implements NotesEvent {
  factory _OnDeleteNote({final int? noteId}) = _$_OnDeleteNote;

  int? get noteId;
  @JsonKey(ignore: true)
  _$$_OnDeleteNoteCopyWith<_$_OnDeleteNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnFetchNotesCopyWith<$Res> {
  factory _$$_OnFetchNotesCopyWith(
          _$_OnFetchNotes value, $Res Function(_$_OnFetchNotes) then) =
      __$$_OnFetchNotesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnFetchNotesCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$$_OnFetchNotesCopyWith<$Res> {
  __$$_OnFetchNotesCopyWithImpl(
      _$_OnFetchNotes _value, $Res Function(_$_OnFetchNotes) _then)
      : super(_value, (v) => _then(v as _$_OnFetchNotes));

  @override
  _$_OnFetchNotes get _value => super._value as _$_OnFetchNotes;
}

/// @nodoc

class _$_OnFetchNotes implements _OnFetchNotes {
  _$_OnFetchNotes();

  @override
  String toString() {
    return 'NotesEvent.onFetchNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnFetchNotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notes? note) onAddOrUpdateNote,
    required TResult Function(int? noteId) onDeleteNote,
    required TResult Function() onFetchNotes,
  }) {
    return onFetchNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
  }) {
    return onFetchNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notes? note)? onAddOrUpdateNote,
    TResult Function(int? noteId)? onDeleteNote,
    TResult Function()? onFetchNotes,
    required TResult orElse(),
  }) {
    if (onFetchNotes != null) {
      return onFetchNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAddNote value) onAddOrUpdateNote,
    required TResult Function(_OnDeleteNote value) onDeleteNote,
    required TResult Function(_OnFetchNotes value) onFetchNotes,
  }) {
    return onFetchNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
  }) {
    return onFetchNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAddNote value)? onAddOrUpdateNote,
    TResult Function(_OnDeleteNote value)? onDeleteNote,
    TResult Function(_OnFetchNotes value)? onFetchNotes,
    required TResult orElse(),
  }) {
    if (onFetchNotes != null) {
      return onFetchNotes(this);
    }
    return orElse();
  }
}

abstract class _OnFetchNotes implements NotesEvent {
  factory _OnFetchNotes() = _$_OnFetchNotes;
}
