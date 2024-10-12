import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileList extends StatelessWidget {

  const NewsTileList({super.key,required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
          (contexet, index) {
              return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: NewsTile(articleModel: articles[index],),
              );
      }),
    );
  }
}
