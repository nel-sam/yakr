import 'package:flutter/material.dart';
import 'package:yakr/src/temp/chat_data.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: ChatData.dummyData.length,
      itemBuilder: (context, index) {
        ChatModel _model = ChatData.dummyData[index];
        return Column(
          children: <Widget>[
            Divider(
              height: 12.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(_model.avatarUrl),
              ),
              title: Row(
                children: <Widget>[
                  Text(_model.name),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    _model.datetime,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              subtitle: Text(_model.message),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14.0,
              ),
            ),
          ],
        );
      },
    ));
  }
}
