// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return _Notes.fromJson(json);
}

/// @nodoc
mixin _$Notes {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesCopyWith<Notes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesCopyWith<$Res> {
  factory $NotesCopyWith(Notes value, $Res Function(Notes) then) =
      _$NotesCopyWithImpl<$Res>;
  $Res call({int? id, String title, String content});
}

/// @nodoc
class _$NotesCopyWithImpl<$Res> implements $NotesCopyWith<$Res> {
  _$NotesCopyWithImpl(this._value, this._then);

  final Notes _value;
  // ignore: unused_field
  final $Res Function(Notes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NotesCopyWith<$Res> implements $NotesCopyWith<$Res> {
  factory _$$_NotesCopyWith(_$_Notes value, $Res Function(_$_Notes) then) =
      __$$_NotesCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String title, String content});
}

/// @nodoc
class __$$_NotesCopyWithImpl<$Res> extends _$NotesCopyWithImpl<$Res>
    implements _$$_NotesCopyWith<$Res> {
  __$$_NotesCopyWithImpl(_$_Notes _value, $Res Function(_$_Notes) _then)
      : super(_value, (v) => _then(v as _$_Notes));

  @override
  _$_Notes get _value => super._value as _$_Notes;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_Notes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notes implements _Notes {
  _$_Notes({this.id, this.title = '', this.content = ''});

  factory _$_Notes.fromJson(Map<String, dynamic> json) =>
      _$$_NotesFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'Notes(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_NotesCopyWith<_$_Notes> get copyWith =>
      __$$_NotesCopyWithImpl<_$_Notes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotesToJson(
      this,
    );
  }
}

abstract class _Notes implements Notes {
  factory _Notes({final int? id, final String title, final String content}) =
      _$_Notes;

  factory _Notes.fromJson(Map<String, dynamic> json) = _$_Notes.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_NotesCopyWith<_$_Notes> get copyWith =>
      throw _privateConstructorUsedError;
}
