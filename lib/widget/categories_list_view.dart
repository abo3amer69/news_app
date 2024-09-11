import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class categorieslistview extends StatelessWidget {
  const categorieslistview({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.avif',
       categoryname: 'business'),
    CategoryModel(
      image: 'assets/entertaiment.avif',
       categoryname: 'Entertaiment'),
    CategoryModel(
      image: 'assets/general.avif', 
      categoryname: 'general'),
    CategoryModel(
      image: 'assets/health.avif',
       categoryname: 'health'),
    CategoryModel(
      image: 'assets/science.avif',
       categoryname: 'science'),
    CategoryModel(
      image: 'assets/sports.avif', 
      categoryname: 'sports'),
    CategoryModel
    (image: 'assets/technology.jpeg',
     categoryname: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
