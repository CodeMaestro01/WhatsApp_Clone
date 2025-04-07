import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/whatsapp_home.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "WhatsApp",
      theme:  ThemeData(
        primaryColor:  Color(0xff075E54),
        hintColor:  Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home:  WhatsAppHome(),
    );
  }
}
