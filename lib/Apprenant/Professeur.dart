import 'package:flutter/material.dart';

class Professeur extends StatefulWidget {
  const Professeur({super.key});

  @override
  State<Professeur> createState() => _ProfesseurState();
}

class _ProfesseurState extends State<Professeur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text("LISTE DES PROFESSEURS ",
          style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,



          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
                title: Text("Adama DIARRA"),
                trailing: Icon(Icons.more_vert),
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vousnousils.fr%2F2023%2F05%2F15%2Fchaires-professeur-junior-dispositif-crispe-toujours-673516&psig=AOvVaw3kyR3dO29tv2Z2nm-YIfKq&ust=1725706044296000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCbo-CRrogDFQAAAAAdAAAAABAE"),

                )
            ),
          )







        ],
      ),











    );
  }
}
