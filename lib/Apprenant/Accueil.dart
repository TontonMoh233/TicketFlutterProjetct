import 'package:flutter/material.dart';


class Accueil extends StatelessWidget{
   Accueil({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blue,
       bottomNavigationBar: NavigationBar(
           destinations:[
             NavigationDestination(
                 icon: Icon(Icons.home),
                 label: "Accueil"),

             NavigationDestination(
                 icon: Icon(Icons.add),
                 label: "Ticket"),

             NavigationDestination(
                 icon: Icon(Icons.sms),
                 label: "Messages"),
             NavigationDestination(
                 icon: Icon(Icons.account_box),
                 label: "Profil")
           ]



       ),


     );

  }





}