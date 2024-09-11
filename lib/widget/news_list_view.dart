import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/News_tile.dart';


class newslistview extends StatelessWidget {
  final List<ArticleModel> articles;

  const newslistview({super.key,required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          }));
  }
}