import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String url;

  // ProductItem(
  //   this.id,
  //   this.title,
  //   this.url,
  // );

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      //  Use a Gridtile
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () => Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments:product.id
             ),
        ),
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: (() => product.toggleFavorite()),
            icon: Icon(product.isFavorite?Icons.favorite:Icons.favorite_border),
            color: Theme.of(context).highlightColor,
          ),
          trailing: IconButton(
            onPressed: (() => null),
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).highlightColor,
          ),
        ),
      ),
    );
  }
}
