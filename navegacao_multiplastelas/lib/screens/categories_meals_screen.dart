import 'package:flutter/material.dart';
import 'package:navegacao_multiplastelas/data/dummy_data.dart';
import '../models/category.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
 final category= ModalRoute.of(context).settings.arguments as Category1;

 final categoryMeals=DUMMY_MEALS.where((meal) {
   return meal.categories.contains(category.id);
 }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder:(ctx,index){
            return MealItem(categoryMeals[index]);
          } ),

    );
  }
}
