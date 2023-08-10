import 'package:flutter/material.dart';
import '../telas/telas_categoria.dart'; 

void main() {
  runApp(AppCardapio());
}

class AppCardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardápio",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelasCategoria(),
    );
  }
}
