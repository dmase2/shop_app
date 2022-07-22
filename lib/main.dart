import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './screens/poducts_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(ctx)=> Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          highlightColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        routes: {
          ProductDetailScreen.routeName:(context) => ProductDetailScreen(),
        },
        home: ProductsOverviewScreen(),
      ),
    );
  }
}


