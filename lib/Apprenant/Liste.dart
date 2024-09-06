import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:ticketpromali/Apprenant/pageajoutticket.dart';

import 'detail.dart';


class Liste extends StatelessWidget {
  const Liste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Listedetail(),
    );
  }
}

// full widget

class Listedetail extends StatefulWidget {
  const Listedetail({super.key});

  @override
  State<Listedetail> createState() => _ListedetailState();
}

class _ListedetailState extends State<Listedetail> {
  final Stream<QuerySnapshot> _ticketStream = FirebaseFirestore.instance.collection('Ticket').snapshots();
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<QuerySnapshot>(
      stream: _ticketStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {

            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return 
                Card(
                  elevation: 8,
                  child: Column(
                    children: [
                     Container(
                       width: 800,
                       height: 140,
                       child: Column(
                        children: [
                          Text("${data['titre']}",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                          Text("${data['DescriptionController']},",style: TextStyle(color: Colors.black26,fontWeight:FontWeight.normal),),

                        ],
                       ),
                     ),
                      //deuxieme container
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text("${data['Categorie']}",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("${data['Date']}"),
                            Text("${data['Statut']}"),
                          ],
                        ),
                        
                      )
                    ],
                  ),
                );
          }).toList(),
        );
      },
    );
  }
}

