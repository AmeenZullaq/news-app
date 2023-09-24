import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final WebViewController controller = WebViewController();

  @override
  void initState() {
    super.initState();
    controller.loadRequest(Uri.parse(widget.articleModel.url!));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
