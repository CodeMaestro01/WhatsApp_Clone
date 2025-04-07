import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/models/status_screen.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
              backgroundImage: NetworkImage(dummydata[index].status)
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummydata[index].name,
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummydata[index].time,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ]
      ),
    );
  }
}