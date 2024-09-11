import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:CachedNetworkImage(
            imageUrl: articleModel.image ??
                'https://via.placeholder.com/150', // Fallback image
            placeholder: (context, url) =>const CircularProgressIndicator(),
            errorWidget: (context, url, error) =>const Icon(Icons.error),
            fit: BoxFit.cover,
          ),
          // child: Image.network(
          //   articleModel.image!,
          //   height: 200,
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          // ),
        ),
        const SizedBox(
          height: 12,
        ),
       Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          articleModel.subTitle ?? ' ',
          maxLines: 2,
          style:const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
