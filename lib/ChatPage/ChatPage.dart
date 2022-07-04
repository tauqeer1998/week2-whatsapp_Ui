import 'package:flutter/material.dart';

import '../Models/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
          itemBuilder: (BuildContext context,i) => Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black26,
                ),
                title: Text(chatData[i].name),
                subtitle: Text(chatData[i].message),
                trailing: Text(chatData[i].time),
              )
            ],
          )
      )
    );
  }
}
