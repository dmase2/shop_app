import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String url;

  ProductItem(
    this.id,
    this.title,
    this.url,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(url),
    );
  }
}
