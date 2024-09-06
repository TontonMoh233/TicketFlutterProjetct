import 'package:flutter/material.dart';

import 'Modification.dart';
import 'Suppression.dart';

class Detail extends StatelessWidget{
   Detail({super.key});
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
                "DETAIL DU TICKET",
                style: TextStyle(fontSize: 30,color: Colors.white,fontWeight:FontWeight.w200,),
                textAlign: TextAlign.center,textDirection: TextDirection.ltr,

              ),
              SizedBox(height: 40,),
              TextField(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Suppression()));
                    },
                    icon: Icon(
                        Icons.delete,color: Colors.red,size: 30,) ,

                    padding: EdgeInsets.all(10),

                  ),


                ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Modification()));
                      },
                    icon: Icon(
                        Icons.edit,color: Colors.white,size: 30,) ,

                    padding: EdgeInsets.all(10),

                  ),


                )

              ],
            )

            ],
          ),
        ),
      )
    );
    
  }
  
}
