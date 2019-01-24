import 'package:flutter/material.dart';
import 'note_detail.dart';

class NoteList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NoteListState();
}

  class _NoteListState extends State<NoteList> {

    var _count = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Notes'),
        ),
        body: _getNoteListView(),

        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NoteDetail())),
          tooltip: 'Add note',
          child: Icon(Icons.add),
        ),
      );
    }

    _getNoteListView() {

      TextStyle titleStyle = Theme.of(context).textTheme.subhead;

      return ListView.builder(
        itemCount: _count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text('Dummy tittle'),
              subtitle: Text('Dummy subtitle'),
              trailing: Icon(Icons.delete, color: Colors.red,),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NoteDetail())),
            ),
          );
        },
      );

    }


  }

