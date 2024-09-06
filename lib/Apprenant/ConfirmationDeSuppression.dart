import 'package:flutter/material.dart';

class ConfirmationSuppression extends StatelessWidget{
  const ConfirmationSuppression ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Etes Vous Sur De Bien Vouloir Supprimé ?",
              style: TextStyle(color: Colors.white,fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),

            Container(
              width: 100,
              height: 100,
              child: ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.arrow_right,size: 30,),
                  label: Text("OUI",style: TextStyle(color: Colors.white,fontSize: 10),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 1.0,),




              ),
            ),

            SizedBox(height: 20,),

            Container(
              width: 100,
              height: 100,
              child: ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.arrow_right,size: 30,),
                  label: Text("Non",style: TextStyle(color: Colors.white,fontSize: 10),)),
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