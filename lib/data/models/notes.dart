
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Notes with _$Notes {
  factory Notes({
    int? id,
    @Default('') String title,
    @Default('') String content,
}) = _Notes;
	
  factory Notes.fromJson(Map<String, dynamic> json) =>
			_$NotesFromJson(json);
}
