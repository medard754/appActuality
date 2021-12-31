import 'package:flutter/cupertino.dart';
import 'package:stage/model/categorie.dart';

class Utils {
  static List<Categorie> getMockedCategorie() {
    return [
        Categorie(
          title:"Santé et Sécurité", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo.png",
          lien:"consulter",
        ),
        Categorie(
          title:"Communication", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo2.jpeg",
          lien:"consulter",
        ),
        Categorie(
          title:"Sport", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo.png",
          lien:"consulter",
        ),
        Categorie(
          title:"Business", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo2.jpeg",
          lien:"consulter",
        ),
        Categorie(
          title:"Femmes et hommes", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo.png",
          lien:"consulter",
        ),
        Categorie(
          title:"Formation", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo2.jpeg",
          lien:"consulter",
        ),
         Categorie(
          title:"Méteo", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo.png",
          lien:"consulter",
        ),
        Categorie(
          title:"Information sur le coronavirus", 
          des: "Avoir les nouvelles sur la santé", 
          subCategory:[], 
          img: "assets/logo2.jpeg",
          lien:"consulter",
        ),
    ];
  }
}
