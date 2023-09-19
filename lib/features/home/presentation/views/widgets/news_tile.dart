import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          // child: CachedNetworkImage(
          //   height: MediaQuery.of(context).size.height * .30,
          //   width: double.infinity,
          //   fit: BoxFit.fill,
          //   imageUrl:
          //       'https://thumbs.dreamstime.com/b/man-reading-newspaper-happy-young-sitting-couch-50576830.jpg',
          // ),
          child: Image(
            height: MediaQuery.of(context).size.height * .30,
            width: double.infinity,
            fit: BoxFit.fill,
            image: NetworkImage(
              articleModel.urlToImage ??
                  'https://thumbs.dreamstime.com/b/man-reading-newspaper-happy-young-sitting-couch-50576830.jpg',
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title ??
              'Large Title should be places in this place large Large Title should be places in this place large',
          maxLines: 2,t
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.description ??
              'Large Title should be places in this place large Large Title should be places in this place large',
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
