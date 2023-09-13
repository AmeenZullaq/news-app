import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

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
          child: Image(
            height: MediaQuery.of(context).size.height * .30,
            width: double.infinity,
            fit: BoxFit.fill,
            image: const NetworkImage(
              'https://thumbs.dreamstime.com/b/man-reading-newspaper-happy-young-sitting-couch-50576830.jpg',
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Large Title should be places in this place large Large Title should be places in this place large',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
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
