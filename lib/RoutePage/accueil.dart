import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stage/main.dart';

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

class _ListViewState extends State<ListView> {
  //var img = ["Santé","Business","Sport","Musique","Communication","Méteo"];
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
  ];
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
          itemCount: title.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                //une fonction dialog qui va retourner une fonction popup
                showDialogFunc(context, img[index], title[index], lien[index]);
              },
              child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(img[index]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        title[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          para[index],
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
          },
        ),
      ),
    );
  }
}

showDialogFunc(context, img, title, lien) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(img, width: 200, height: 200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Annuler",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            lien,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
