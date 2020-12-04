import 'package:flutter/material.dart';
import 'package:navegacao_multiplastelas/screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber
      ),
      routes:{
        AppRoutes.HOME:(ctx)=>CategoryScreen() ,
        AppRoutes.CATEGORIES_MEALS:(ctx)=>CategoriesMealsScreen(),

      },

    );
  }
}



