import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nomController = TextEditingController();


  String? get id => null;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        extendBodyBehindAppBar: false,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 100,
                  height: 80,
                  margin: EdgeInsets.only(top: 2),
                  child:  Icon((Icons.account_circle), size: 100, color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 600,
                  padding: EdgeInsets.all( 30),
                  height: 100,
                  child: TextField(
                       controller: nomController,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "Votre nom",
                        labelText: "nom",
                        prefixIcon: Icon(Icons.person, size: 20, color: Colors.white,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))


                    ),

                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(top: ),
                  padding: EdgeInsets.all( 20),
                  width: 600,
                  height: 100,
                  child: TextField(
                     controller: prenomController,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "Votre prenom",
                        labelText: "prenom",
                        prefixIcon: Icon(Icons.person, size: 20, color: Colors.white,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))


                    ),

                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all( 20),
                  width: 600,
                  height: 100,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "Votre Adresse E-Mail",
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.email, size: 20, color: Colors.white,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))


                    ),

                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(top: 2),
                  padding: EdgeInsets.all(20),
                  width: 600,
                  height: 100,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "Votre Mot De passe ?",
                        labelText: "mot de passe",
                        prefixIcon: Icon(Icons.lock, size: 20, color: Colors.white,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),)
                    ),

                  ),
                ),
                ElevatedButton(
                    onPressed: () async {

                      await FirebaseFirestore.instance.collection('users').doc(id).set({
                          'nom':nomController.text,
                           'prenom':prenomController.text,
                           'email':emailController.text,
                          'mdp':passwordController.text,


                      });
                    },
                    child: Text("Enregistrer"))

              ]

          ),
        )
    );

  }
}