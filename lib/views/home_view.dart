import 'package:flutter/material.dart';
import 'package:news_app/models/category_card_item.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_tile_list.dart';
import 'package:news_app/widgets/news_tile_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<CategoryItem> images = const [
    CategoryItem(image: 'assets/business.avif', text: 'Business'),
    CategoryItem(image: 'assets/entertaiment.avif', text: 'Entertainment'),
    CategoryItem(image: 'assets/science.avif', text: 'Science'),
    CategoryItem(image: 'assets/sports.avif', text: 'Sports'),
    CategoryItem(image: 'assets/health.avif', text: 'Health'),
    CategoryItem(image: 'assets/technology.jpeg', text: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(images: images),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            const NewsTileListBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
