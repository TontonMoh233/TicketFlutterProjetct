import 'package:flutter/material.dart';

import 'login.dart';

class demarrage extends StatelessWidget{
   demarrage({super.key});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       extendBodyBehindAppBar: false,
       backgroundColor: Colors.blueAccent,

       body: Center(
         child: Container(
            width: 700,
           height: double.infinity,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text("Bienvenue", style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.w500),),
               Text("Ticket Pro",style: TextStyle(
                 color: Colors.white,
                 fontSize: 25,

               ),)

             ],
           ),

         ),
       ),

         floatingActionButton: FloatingActionButton(
           elevation: 0,
           backgroundColor: Colors.blueGrey,
         onPressed: (){},
    child: IconButton(onPressed: (){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));

    },
    icon: Icon(Icons.arrow_right, size: 40, color: Colors.white,)),

    ),
    );


  }


}