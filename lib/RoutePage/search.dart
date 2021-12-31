import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stage/helpers/utils.dart';
import 'package:stage/model/categorie.dart';

class search extends SearchDelegate {
  List<String> data = [
    "Android",
    "Linux",
    "Medard",
    "toto",
    "josey",
    "micro",
    "pieton"
  ];
  List<String> recentRecherche = [
    "Android",
    "Linux",
    "Medard",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(title: Text(query), onTap: () {});
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Text("No resultat"),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: recentRecherche.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentRecherche[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        });
  }
}
