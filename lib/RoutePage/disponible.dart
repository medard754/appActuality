import 'package:flutter/widgets.dart';

class Disponible extends StatefulWidget {
  Disponible({Key? key}) : super(key: key);

  @override
  _DisponibleState createState() => _DisponibleState();
}

class _DisponibleState extends State<Disponible> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [Text("Bientôt disponible...")],
    ));
  }
}
