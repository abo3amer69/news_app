// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/model/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widget/News_tile.dart';

// class newslistview extends StatefulWidget {
//   const newslistview({
//     super.key,
//   });

//   @override
//   State<newslistview> createState() => _newslistviewState();
// }

// class _newslistviewState extends State<newslistview> {
//   List<ArticleModel> articles = [];

//   @override
//   bool isLoading = true;
//   void initState() async {
//     super.initState();
//     await getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getnews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//       ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 22),
//               child: NewsTile(
//                 articleModel: articles[index],
//               ),
//             );
//           }));
//   }
// }
