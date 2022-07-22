import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/Products.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsContainer = Provider.of<Products>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: [
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                if (selectedValue == FilterOptions.Favorites) {
                  productsContainer.showFavorites();
                } else {
                  productsContainer.showAll();
                }
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                        child: Text('Favorites'),
                        value: FilterOptions.Favorites),
                    PopupMenuItem(child: Text('All'), value: FilterOptions.All)
                  ]),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
