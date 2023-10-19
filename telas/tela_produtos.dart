import 'package:bela/models/produtos.dart';
import 'package:flutter/material.dart';
import '../componentes/produto_item.dart';

class TelaProdutos extends StatefulWidget {
  static const routeName = '/produtos';
  final List<Produto> produtosValidos;
  TelaProdutos(this.produtosValidos);

  @override
  State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  String? tituloCategoria;
  List<Produto>? displayProdutos;

  @override
  void didChangeDependencies() {
   
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    tituloCategoria = routeArgs['title']!;
    final categoryId = routeArgs['id'];
    displayProdutos = widget.produtosValidos.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tituloCategoria!)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ItemProduto(
            id: displayProdutos![index].id,
            title: displayProdutos![index].title,
            imageUrl: displayProdutos![index].imageUrl,
            duration: displayProdutos![index].duration,
            cost: displayProdutos![index].cost,
          );
        },
        itemCount: displayProdutos!.length,
      ),
    );
  }
}
