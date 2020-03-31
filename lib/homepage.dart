import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            cabezera(),
            cuerpo()
          ],
        ),
      )
    );
  }

  Widget cabezera(){
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 250,
        child: Image.asset('images/portada.jpeg',
          fit: BoxFit.fill,
        )
      ),
    );
  }
  Widget avatar(){
    return Padding(
      padding: const EdgeInsets.only(top: 80.0 , left: 40),
      child: CircleAvatar(
      radius: 70,
       backgroundImage: NetworkImage('https://scontent.flim14-1.fna.fbcdn.net/v/t1.0-9/68667793_2905816816309651_4716541859638280192_n.jpg?_nc_cat=108&_nc_ohc=K8PwjPOsAY8AX-ePCcF&_nc_ht=scontent.flim14-1.fna&oh=12de214381b7944c8356baa3a9e5fef3&oe=5E8ED242')
      ),
    );
  }

  Widget info(){
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.location_on ,color: Colors.red, size: 20),
              SizedBox( width: 10.0 ),
              Text("Trujillo, Perú")
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.work , color: Colors.red, size: 20),
              SizedBox( width: 10.0 ),
              Text("Systems  Enginner")
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.group_work  ,color: Colors.red, size: 20),
              SizedBox( width: 10.0 ),
              Text("Trujillo, Perú")
            ],
          )
        ],
      ),
    );
  }

  Widget   botones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          color: Colors.red,
          child: Text("Seguir", style: TextStyle( color: Colors.white),),
          onPressed: (){},
        ),
         RaisedButton(
          color: Colors.white,
          child: Text("Enviar Mensaje"),
          onPressed: (){},
        )
      ],
    );
  }

  Widget biografia(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("BIOGRAFÍA:", textAlign: TextAlign.start, style:TextStyle(fontWeight:  FontWeight.bold),),
            SizedBox(height: 5.0,),
            Text("Jefferson Santos Angulo, nació el 22 de noviiembre de 1997, es egresado de la UCV, actulamente realiza sus practicas en la gerencia de sistemas de a MPT. Se dedica al desarrollo movil con Flutter y Dart", textAlign: TextAlign.justify, style:TextStyle(color: Colors.black45)),
          ],
        ),
      ));
  }
  Widget cuerpo(){
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 490,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  avatar(),
                  SizedBox( width: 10.0 ),
                  info()
                ],
              ),
              SizedBox(height: 10.0,),
              botones(),
              SizedBox(height: 40.0,),
              biografia()
            ],
          ),
        )
      ),
    );
  }

}