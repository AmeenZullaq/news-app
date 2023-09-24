import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/core/utils/app_router.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/core/widgets/custom_loading_indecator.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kDetailsView,
                extra: articleModel,
              );
            },
            child: CachedNetworkImage(
              height: MediaQuery.of(context).size.height * .30,
              width: double.infinity,
              fit: BoxFit.fill,
              imageUrl: articleModel.urlToImage ?? kDefaultImage,
              placeholder: (context, url) => const CustomLoadingIndecator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title ?? 'No Title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.description ?? 'No Description',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle14.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
