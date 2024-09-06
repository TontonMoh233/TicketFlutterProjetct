import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticketpromali/Apprenant/Liste.dart';
import 'package:ticketpromali/Apprenant/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Accueil.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
   Future<void> _loginuser()async {
     String email = emailController.text;
     String password = passwordController.text;

     UserCredential userCredential= await auth.signInWithEmailAndPassword(
         email : email,
         password: password,

     );

     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Liste()));

   }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        extendBodyBehindAppBar: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 80,
                margin: EdgeInsets.only(top: 5),
                child:  Icon((Icons.account_circle), size: 100, color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all( 30),
                width: 600,
                height: 100,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Votre Adresse E-Mail",
                      labelText: "E-mail",
                      prefixIcon: Icon(Icons.email, size: 20, color: Colors.white,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))


                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                padding: EdgeInsets.all(30),
                width: 600,
                height: 100,
                child: TextField(
                   controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Votre MOT DE PASSE",
                      labelText: "Mot de passe",
                      prefixIcon: Icon(Icons.lock, size: 20, color: Colors.white,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),)


                  ),

                ),
              ),

              Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  width: 400,
                  margin: EdgeInsets.only(top: 10),

                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Se Connecter", style: TextStyle(
                          fontSize: 30, color: Colors.white,

                        ),),
                       IconButton(
                           onPressed: _loginuser,

                           icon:Icon(Icons.arrow_right)),
                      ],
                    ),
                  )
              ),



            ],
          ),
        )


    );
  }
}












