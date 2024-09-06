import 'package:flutter/material.dart';

class EditerProfil extends StatelessWidget{
  const EditerProfil ({super.key});
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
                decoration: InputDecoration(labelText:"Votre nom",prefixIcon:Icon(Icons.login_rounded),filled:true,fillColor: Colors.white,border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(10),)),),
              SizedBox(height: 15,),

              TextField(
                decoration: InputDecoration(labelText:"Votre prenom",prefixIcon:Icon(Icons.login_rounded),filled:true,fillColor: Colors.white,border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(10),)),),
              SizedBox(height: 15,),

              TextField(
                decoration: InputDecoration(labelText:"Votre E-mail",prefixIcon:Icon(Icons.mail),filled:true,fillColor: Colors.white,border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(10),)),),
              SizedBox(height: 30,),
              
              ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.arrow_right),
                  label: Text("SAUVEGARDER", style: TextStyle(color: Colors.white,fontSize:20),)),






            ],
          ),
        ),
      ),




    );
  }

}