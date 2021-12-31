import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stage/model/article.dart';

class Categorie {
  String title;
  String des;
  String img;
  String lien;
 // Article news;
  //GridView subCategorie;
  List<Categorie> subCategory;
  Categorie({
    required this.title,
    required this.des,
    required this.subCategory,
    required this.img,
    required this.lien,
    //required this.news
  });
}
