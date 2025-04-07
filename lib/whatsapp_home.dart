// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/pages/calls_screen.dart';
import 'package:whatsapp_messenger/pages/camera_screen.dart';
import 'package:whatsapp_messenger/pages/chats_screen.dart';
import 'package:whatsapp_messenger/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            ),
          PopupMenuButton<String>(
    onSelected: (value) {
      // Handle menu item selection
      // ignore: avoid_print
      print("Selected: $value");
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      PopupMenuItem<String>(
        value: 'New_Group',
        child: Text('New group'),
      ),
      PopupMenuItem<String>(
        value: 'Devices_linked',
        child: Text('Linked devices'),
      ),
      PopupMenuItem<String>(
        value: 'settings',
        child: Text('Settings'),
      ),
    ],
    icon: Icon(Icons.more_vert), 
  ),],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).hintColor,
        child: Icon(Icons.message, color: Colors.white,),
        // ignore: avoid_print
        onPressed: () {
          _tabController.animateTo(1); // Switch to ChatsScreen (index 1)
        },
      ),
    );
  }
}
