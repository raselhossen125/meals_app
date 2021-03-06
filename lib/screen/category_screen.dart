// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widget/category_item.dart';
import '../data/dummy_data.dart';

class CategoryesScreen extends StatelessWidget {
  const CategoryesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      children: DUMMY_CATEGORIES.map(
        (catData) {
          return CategoryItem(catData.id, catData.title, catData.color);
        },
      ).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 2,
          maxCrossAxisExtent: 260),
    );
  }
}
