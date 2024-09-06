import 'package:flutter/material.dart';

import 'Liste.dart';


class Modification extends StatelessWidget{
  const  Modification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue,

        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Modifier avec Succès",
                style: TextStyle(color: Colors.white,fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15,),

              Container(
                width: 100,
                height: 100,
                child: ElevatedButton.icon(
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Liste ()));
                    },
                    icon: Icon(Icons.arrow_right,size: 30,),
                    label: Text("OK",style: TextStyle(color: Colors.white,fontSize: 15),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1.0,),
                ),
              )

            ],
          ),
        ),
   );
  }

}