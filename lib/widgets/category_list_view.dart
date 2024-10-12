import 'package:flutter/material.dart';
import 'package:news_app/models/category_card_item.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.images});

  final List<CategoryItem> images;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoty: images[index]);
        },
      ),
    );
  }
}
