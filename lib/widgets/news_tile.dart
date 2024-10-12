import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image!= null?
            Image.network(
              '${articleModel.image}',
              width: double.infinity,
              height: 200,
              fit: BoxFit.fill,
            ):
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey,
              child: const Icon(Icons.image, size: 50),
            ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          '${articleModel.title}',
          // 'Large title should be places in this page Large title should be places in this page',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${articleModel.subTitle}',
          // 'and here is the description of the news you can place your description here',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
