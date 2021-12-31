import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stage/RoutePage/disponible.dart';
import 'package:stage/RoutePage/search.dart';
import 'package:stage/helpers/Utils_article.dart';
import 'package:stage/helpers/utils.dart';
import 'package:stage/model/article.dart';
import 'package:stage/model/categorie.dart';

List<Categorie> categories = Utils.getMockedCategorie();
List<Article> articles = Utils_article.getMockedArticle();

class NewsChoix extends StatelessWidget {
  late final String titre;

  var context;
  NewsChoix(this.titre);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titre),
      ),
      body: Center(
        child: DetectedArticle(titre),
      ),
      /* floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed:()=>showSearch(context: context, delegate: search()),),*/
    );
  }

  DetectedArticle(titre) {
    for (var art in articles) {
      if (art.codeCategorie == titre) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Disponible()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: _ligneArticle(art.img, art.titre, art.desc),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Disponible()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: _ligneArticle(art.img1, art.titre1, art.desc1),
                  )
              ),
               SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Disponible()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: _ligneArticle(art.img2, art.titre2, art.desc2),
                  )
              ),
               SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Disponible()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: _ligneArticle(art.img3, art.titre3, art.desc3),
                  )
              ),
            ],
          ),
        );
      }
    }
  }

  _ligneArticle(img, titre, desc) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(img),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(titre,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 10,
            ),
            Text(
              desc,
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        )
      ],
    );
  }
}
/*
showDialogFunc(context, img, title) {
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
                  Text(
                    "Bientôt disponible merci!",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 15,
                        ),
                        label: Text(
                          "ok",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
*/