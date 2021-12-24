import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stage/main.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorie"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          children: [
            Container(color: Colors.blue,margin:EdgeInsets.only(left:20,right:5,top:20)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:5,right:20,top:20)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:20,right:5,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:5,right:20,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:20,right:5,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:5,right:20,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:20,right:5,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:5,right:20,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:20,right:5,top:5)),
            Container(color: Colors.blue,margin:EdgeInsets.only(left:5,right:20,top:5)),
          ],
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,mainAxisSpacing:1,),
        ),
      ),
    );
  }
}

