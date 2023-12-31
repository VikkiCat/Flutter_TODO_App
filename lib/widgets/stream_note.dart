// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/data/firestor.dart';
import 'package:to_do_app/widgets/task_widget.dart';

class Stream_note extends StatelessWidget {
  bool done;
  Stream_note(this.done, {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Firestore_Datasource().stream(done),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final notesList = Firestore_Datasource().getNotes(snapshot);
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final note = notesList[index];

              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  Firestore_Datasource().delete_note(note.id);
                },
                child: Task_Widget(note),
                background: Container(color: Colors.red),
              );
            },
            itemCount: notesList.length,
          );
        });
  }
}
