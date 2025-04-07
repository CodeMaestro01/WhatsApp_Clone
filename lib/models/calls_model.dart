import 'package:flutter/material.dart';

class CallsModel {
  final String name;
  final String date;
  final String avatarUrl;
  final String callType;
  Icon callIcon;

  CallsModel(
      {required this.name,
      required this.date,
      required this.avatarUrl,
      required this.callType,
      required this.callIcon});
}

List<CallsModel> dummyCalls = [
  CallsModel(
      name: "Sam Alex",
      date: "20-03-2025",
      avatarUrl: "https://randomuser.me/api/portraits/men/5.jpg",
      callType: "Incoming(3)",
      callIcon: Icon(Icons.call)),
  CallsModel(
      name: "Barry Cook",
      date: "20-03-2025",
      avatarUrl: "https://randomuser.me/api/portraits/men/4.jpg",
      callType: "Outgoing",
      callIcon: Icon(Icons.video_call)),
  CallsModel(
      name: "John Doe",
      date: "19-03-2025",
      avatarUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      callType: "Incoming",
      callIcon: Icon(Icons.video_call)),
  CallsModel(
      name: "Mark Spector",
      date: "15-03-2025",
      avatarUrl: "https://randomuser.me/api/portraits/men/3.jpg",
      callType: "Outgoing(2)",
      callIcon: Icon(Icons.call)),
];
