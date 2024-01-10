// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:notes_by_pauleen/business_logic/bloc/notes/notes_bloc.dart';
import 'package:notes_by_pauleen/data/models/notes.dart';
import 'package:notes_by_pauleen/presentation/constants/enums.dart';

class NotesPage extends StatefulWidget {
  String title;
  Notes? note;
  NotePageMode mode;
   NotesPage({
    Key? key,
    this.note,
    required this.title,
    required this.mode,
  }) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    if(widget.mode == NotePageMode.view || widget.mode == NotePageMode.edit){
      _noteController.text = widget.note!.content.toString();
      _titleController.text = widget.note!.title.toString();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Title',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      TextFormField(
                        readOnly: widget.mode == NotePageMode.view,
                        controller: _titleController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please input title';
                          }
                          return null;
                        },
                        inputFormatters: [LengthLimitingTextInputFormatter(25)],
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          hintText: "Enter Title",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Note',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      TextFormField(
                        readOnly: widget.mode == NotePageMode.view,
                        controller: _noteController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please input note';
                          }
                          return null;
                        },
                        inputFormatters: [LengthLimitingTextInputFormatter(70)],
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          hintText: "Enter your notes here",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                        minLines: 6,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Visibility(
                visible: widget.title != 'View Note',
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: TextButton(
                    onPressed:  () {
                      if (_formKey.currentState!.validate()) {
                          _saveNote(context);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _saveNote(BuildContext context) {
    final String title = _titleController.text;
    final String content = _noteController.text;

    if (title.isNotEmpty && content.isNotEmpty) {
      final Notes newNote = Notes(
        id: widget.mode == NotePageMode.create ? null : widget.note!.id, 
        title: title,
        content: content,
      );


      BlocProvider<NotesBloc>.value(
        value: NotesBloc()..add(NotesEvent.onAddOrUpdateNote(note: newNote)));
      
      Navigator.pop(context); 
     
    }
  }
}
