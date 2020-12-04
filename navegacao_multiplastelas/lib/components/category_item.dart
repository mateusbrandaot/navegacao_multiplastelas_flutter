import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categories_meals_screen.dart';
class CategoryItem extends StatelessWidget {
  final Category1 category;
  CategoryItem(this.category);
  void _selectCategory(BuildContext context){
    Navigator.of(context).pushNamed(
        '/categories-meals',
         arguments: category
    );
  }
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: ()=>_selectCategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(category.title),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors:
          [
            category.color.withOpacity(0.5),
            category.color,
          ],
           begin:Alignment.topLeft,
           end: Alignment.bottomRight,
          )
        ),
      ),
    );
  }
}
