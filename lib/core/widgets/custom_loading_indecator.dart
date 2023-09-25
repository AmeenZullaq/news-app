import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingIndecator extends StatelessWidget {
  const CustomLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .30,
                width: double.infinity,
                color: Colors.white,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.white,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.white,
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 30,
        );
      },
      itemCount: 5,
    );
  }
}
