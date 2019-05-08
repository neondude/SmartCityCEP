import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:namma_chennai/model/user.dart';
//import 'package:namma_chennai/utils/globals.dart';
import 'chatscreen.dart';

class Chat extends StatefulWidget {
  @override
  State createState() => new ChatState();

}

class ChatState extends State<Chat>{
  User currentUser;
  String userId;
  User mockUser = new User('1234568','123456','developer');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(currentUser: mockUser),
    );
  }

  @override
  void initState() {
    mockUser.userWard='ward-2';
    mockUser.userName='Surya';
    super.initState();
//    fireCollections.getLoggedInUserId().then((val) {
//      userId = val;
//    }).then((r) {
//      fireCollections
//          .getUserInfoByUserId(userId)
//          .then((QuerySnapshot snapshot) {
//        List<DocumentSnapshot> docs = snapshot.documents;
//        for (DocumentSnapshot doc in docs) {
//          User user = new User.fromSnapShot(doc);
//          currentUser = user;
//        }
//      });
//    });
  }
}

