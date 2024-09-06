import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ticketpromali/Apprenant/EditProfil.dart';
import 'package:ticketpromali/Apprenant/Liste.dart';
import 'package:ticketpromali/Apprenant/Professeur.dart';
import 'package:ticketpromali/Apprenant/demarrage.dart';
import 'package:ticketpromali/Apprenant/login.dart';
import 'package:ticketpromali/Inscription.dart';

import 'Apprenant/PageDeProfil.dart';
import 'Apprenant/pageajoutticket.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Assurez-vous que Firebase est initialisé une seule fois
  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyA7exoUsTFiex55lo5Tkz-C2QRDiXSExdk",
        authDomain: "ticketproject-8e666.firebaseapp.com",
        projectId: "ticketproject-8e666",
        storageBucket: "ticketproject-8e666.appspot.com",
        messagingSenderId: "26731453001",
        appId: "1:26731453001:web:d2bf800480109e3d203d98",
      ),
    );
  } catch (e) {
    print('Erreur d\'initialisation de Firebase: $e');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application de Gestion de Tickets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Liste(),
    );
  }
}


