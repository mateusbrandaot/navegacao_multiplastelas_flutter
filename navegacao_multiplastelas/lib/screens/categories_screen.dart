import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_multiplastelas/components/category_item.dart';
import 'package:navegacao_multiplastelas/data/dummy_data.dart';
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vamos cozinhar"),
      ),
      body: 
      GridView(
          padding: EdgeInsets.all(25),
          gridDelegate:
      SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
      ),
        children: DUMMY_CATEGORIES.map((cat){
        return Container(
          child: CategoryItem(cat),
        );}
        ).toList()

      ),
    );
  }
}
