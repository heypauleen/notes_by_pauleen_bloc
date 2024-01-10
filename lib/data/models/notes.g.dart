// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notes _$$_NotesFromJson(Map<String, dynamic> json) => _$_Notes(
      id: json['id'] as int?,
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$_NotesToJson(_$_Notes instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
