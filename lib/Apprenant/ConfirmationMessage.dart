import 'package:flutter/material.dart';

import 'Liste.dart';

class ConfirmationMessage extends StatelessWidget{
  const ConfirmationMessage ({super.key});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blueAccent,

       body:  Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
                 " TICKET ENVOYER",
                style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,
             ),
             Text(
               " AVEC SUCCES",
               style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,
             ),
             SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.all(5),

               decoration: BoxDecoration(
                   color: Colors.white,
                 borderRadius: BorderRadius.circular(5),
                 border: Border.all(
                   width: 1.0,
                 )
               ),
               width: 150,
               height: 50,
               child: IconButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Liste()));
                   },
                   icon: Icon(Icons.check,size: 30, color: Colors.black,)),
             )
           ],
         ),
       ),
     );
  }

}
