import "package:flutter/material.dart";
import 'package:appwaycost/telaMenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    inicializarFirebase();
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Way Cost',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TelaMenu(),
    );
  }
}

Future <void> inicializarFirebase() async {
  await Firebase.initializeApp();
  Firebase.initializeApp().whenComplete(() => print("Conectado firebase"));
}







