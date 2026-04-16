import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor, 
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: "Salad",
        iconPath: 'assets/icons/blueberry-pancake.svg',
        boxColor: Colors.indigo,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Cake",
        iconPath: 'assets/icons/blueberry-pancake.svg',
        boxColor: Colors.deepPurple,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Snack",
        iconPath: 'assets/icons/blueberry-pancake.svg',
        boxColor: Colors.indigo,
      ),
    );

    return categories;
  }
}