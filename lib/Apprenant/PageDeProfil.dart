import 'package:flutter/material.dart';

class PageDeProfil extends StatelessWidget{
  const PageDeProfil ({super.key});
  @override
  Widget build(BuildContext context) {

     return Scaffold(
        backgroundColor: Colors.lightBlue,

       body: Center(
         child: Container(
           margin: EdgeInsets.only(top: 30),
            width: 500,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CircleAvatar(
                   child: Icon(Icons.account_box,),),
                  SizedBox(height: 50,),
                  Text("AMINATA TRAORE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200,), textAlign:TextAlign.center,),
                  SizedBox(height: 30,),

                 TextField(
                   decoration: InputDecoration(prefixIcon:Icon(Icons.edit),filled:true,fillColor: Colors.white,border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(10),)),),
                 SizedBox(height: 15,),
                 TextField(
                   decoration: InputDecoration(prefixIcon:Icon(Icons.key),filled:true,fillColor: Colors.white,border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(10),)),),
                 SizedBox(height: 15,),
                 TextField(
                   decoration: InputDecoration(prefixIcon:Icon(Icons.info),filled:true,fillColor: Colors.white,border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(10),)),),
                   Container(
                     child: Row(
                       children: [
                         IconButton(
                             onPressed: null,
                             icon: Icon(Icons.refresh,size: 30, color: Colors.white,)),

                         IconButton(
                             onPressed: null,
                             icon: Icon(Icons.logout,size: 30,color: Colors.white,)),
                       ],
                     ),
                   )


               ],
           ),
         ),
       ),




     );

  }

}