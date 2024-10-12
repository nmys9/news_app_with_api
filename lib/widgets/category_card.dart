import 'package:flutter/material.dart';
import 'package:news_app/models/category_card_item.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoty});

  final CategoryItem categoty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return CategoryView(
                category: categoty.text,
            );
          })
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(categoty.image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              categoty.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
