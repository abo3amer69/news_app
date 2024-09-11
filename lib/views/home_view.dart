import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/News_tile.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/news_list_view.dart';

import '../model/article_model.dart';
import '../services/news_service.dart';
import '../widget/news_list_view_builder.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: categorieslistview()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          ),
          
        ));
  }
}

