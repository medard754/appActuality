import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stage/RoutePage/article.dart';
import 'package:stage/helpers/utils.dart';
import 'package:stage/main.dart';
import 'package:stage/model/categorie.dart';
/*
var title = [
  "Santé",
  "Business",
  "Sport",
  "Musique",
  "Communication",
  "Méteooo",
  "Santé",
  "Business",
  "Sport",
  "Musique",
  "Communication",
  "Méteooo"
];
var lien = [
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter",
  "consulter"
];
var img = [
  "assets/logo.png",
  "assets/logo2.jpeg",
  "assets/logo.png",
  "assets/logo2.jpeg",
  "assets/logo.png",
  "assets/logo2.jpeg",
  "assets/logo.png",
  "assets/logo2.jpeg",
  "assets/logo.png",
  "assets/logo2.jpeg",
  "assets/logo.png",
  "assets/logo2.jpeg",
];
var para = [
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé",
  "Avoir les nouvelles sur la santé"
];*/

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class ListView extends StatefulWidget {
  ListView({Key? key}) : super(key: key);

  @override
  _ListViewState createState() => _ListViewState();
}
List<Categorie> categories = Utils.getMockedCategorie();
class _ListViewState extends State<ListView> {
  //var img = ["Santé","Business","Sport","Musique","Communication","Méteo"];
 
  var _actu;
  @override
  Widget build(BuildContext context) {
   
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categorie",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      backgroundColor: Colors.blue.withOpacity(0.7),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return _griditem(index);
          },
        ),
      ),
    );
  }

  
  _griditem(index) {
    return GestureDetector(
      onTap: () {
        //une fonction dialog qui va retourner une fonction popup
      Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => NewsChoix(categories[index].title)));
      },
      child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.asset(categories[index].img),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                categories[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  categories[index].des,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                    spreadRadius: 1,
                    offset: Offset(2.0, 2))
              ]),
          margin: EdgeInsets.all(5)),
    );
  }
}

