import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'ConfirmationMessage.dart';


class AjoutTicket extends StatefulWidget {
  const AjoutTicket({super.key});

  @override
  State<AjoutTicket> createState() => _AjoutTicketState();
}

class _AjoutTicketState extends State<AjoutTicket> {

  // recuperation des donneeés du champ de saisie du ticket
  final  titreduticketController = TextEditingController();
  final categorieController = TextEditingController();
  final prioriteticketController = TextEditingController();
  final descriptionController = TextEditingController();

  Future<void> addticket() async{
     await FirebaseFirestore.instance.collection('Ticket').add({

       'titre':titreduticketController.text,
       'Categorie':categorieController.text,
       'Priorité':prioriteticketController.text,
       'DescriptionController':descriptionController.text,
       'Date': DateTime.now(),
       'Statut':"ATTENTE",

     });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,

        body: Center(
          child: Container(
            width: 600,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 70),
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Text(
                  "AJOUTER UN TICKET",
                  style: TextStyle(fontSize: 30,color: Colors.white,fontWeight:FontWeight.w200,),
                  textAlign: TextAlign.center,textDirection: TextDirection.ltr,

                ),
                SizedBox(height: 40,),
                TextField(
                  controller: titreduticketController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 3.0,
                        )
                    ),
                    hintText: "Titre du Ticket",



                  ),

                ),
                SizedBox(height: 40,),
                TextField(
                  controller: categorieController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 3.0,
                        )
                    ),
                    hintText: "categorie du ticket",



                  ),

                ),
                SizedBox(height: 40,),
                TextField(
                  controller: prioriteticketController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 3.0,
                        )
                    ),
                    hintText: "Priorité du ticket",



                  ),

                ),
                SizedBox(height: 40,),
                TextField(
                  controller: descriptionController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 3.0,

                        )
                    ),
                    hintText: "Description ",




                  ),

                ),
                SizedBox(height: 40,),

                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      )
                  ),
                  child: IconButton(
                    onPressed: (){
                      addticket();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmationMessage()));
                    },
                    icon: Icon(
                      Icons.send,color: Colors.white,size: 30,) ,

                    padding: EdgeInsets.all(10),

                  ),


                )


              ],
            ),
          ),
        )
    );
  }
}



