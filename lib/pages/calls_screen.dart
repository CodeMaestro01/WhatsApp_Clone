import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/models/calls_model.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCalls.length,
      itemBuilder: (context, index) => Column(children: <Widget>[
        Divider(
          height: 10.0,
        ),
        ListTile(
          leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyCalls[index].avatarUrl)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                dummyCalls[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(dummyCalls[index].callIcon.icon,
                  color: Theme.of(context).hintColor),
            ],
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              "${dummyCalls[index].callType}, ${dummyCalls[index].date}",
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
        )
      ]),
    );
  }
}
