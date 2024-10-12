import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile_list.dart';


class NewsTileListBuilder extends StatefulWidget{
  const NewsTileListBuilder({super.key,required this.category});

  final String category;
  @override
  State<NewsTileListBuilder> createState() => _NewsTileListBuilderState();
}

class _NewsTileListBuilderState extends State<NewsTileListBuilder> {
  var futuer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futuer= NewsService(Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futuer,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return NewsTileList(
              articles: snapshot.data!,
            );
          }else if(snapshot.hasError){
            return const SliverToBoxAdapter(
              child: Text('Error'),
            );
          }else{
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

        }
    );
  }
}
