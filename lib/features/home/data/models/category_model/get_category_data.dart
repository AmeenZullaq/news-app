import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/features/home/data/models/category_model/category_model.dart';

class GetCategoryData {
  List<CategoryModel> getCategoryData() {
    return const [
      CategoryModel(Assets.kBusinessImage, 'business'),
      CategoryModel(Assets.kHealthImage, 'health'),
      CategoryModel(Assets.kIntertainmentImage, 'entertainment'),
      CategoryModel(Assets.kScienceImage, 'science'),
      CategoryModel(Assets.kSportImage, 'sports'),
      CategoryModel(Assets.kTechnologyImage, 'technology'),
    ];
  }
}
