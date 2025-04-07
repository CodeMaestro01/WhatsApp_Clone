import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummydata.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummydata[index].avatarUrl)
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummydata[index].name,
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                Text(
                  dummydata[index].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummydata[index].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ]
      ),
    );
  }
}
