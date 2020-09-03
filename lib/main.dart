import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopie_app/provider/cart.dart';
import 'package:shopie_app/provider/orders.dart';
import 'package:shopie_app/provider/products.dart';
import 'package:shopie_app/screens/cart_screen.dart';
import 'package:shopie_app/screens/orders_screen.dart';
import 'package:shopie_app/screens/product_detail_screen.dart';
import 'package:shopie_app/screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.orangeAccent,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
