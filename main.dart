import 'package:flutter/material.dart';
import 'models/categorias.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Categoria> mockCategories = [
    Categoria(
      id: 'c1',
      titulo: 'Italiano',
      color: Colors.purple,
    ),
    Categoria(
      id: 'c2',
      titulo: 'Rápido & Fácil',
      color: Colors.red,
    ),
    Categoria(
      id: 'c3',
      titulo: 'Hamburgers',
      color: Colors.orange,
    ),
    Categoria(
      id: 'c4',
      titulo: 'Alemã',
      color: Colors.amber,
    ),
    Categoria(
      id: 'c5',
      titulo: 'Leve & Saudável',
      color: Colors.indigo,
    ),
    Categoria(
      id: 'c6',
      titulo: 'Exótica',
      color: Colors.green,
    ),
    Categoria(
      id: 'c7',
      titulo: 'Café da Manhã',
      color: Colors.lightBlue,
    ),
    Categoria(
      id: 'c8',
      titulo: 'Asiática',
      color: Colors.lightGreen,
    ),
    Categoria(
      id: 'c9',
      titulo: 'Francesa',
      color: Colors.pink,
    ),
    Categoria(
      id: 'c10',
      titulo: 'Verão',
      color: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: ListView.builder(
        itemCount: mockCategories.length,
        itemBuilder: (ctx, index) {
          final categoria = mockCategories[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: categoria.color,
            ),
            title: Text(categoria.titulo),
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    title: Text(categoria.titulo),
                    content: Text('Você clicou na categoria: ${categoria.titulo}'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text('Fechar'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
