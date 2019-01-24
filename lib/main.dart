import 'package:flutter/material.dart';
import 'package:sqflite/screens/note_list.dart';
import 'package:sqflite/screens/note_detail.dart';

main() => runApp(Home());

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: NoteList(),
    );
  }

}