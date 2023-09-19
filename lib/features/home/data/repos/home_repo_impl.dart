import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService api;
  final String apiKey = '0761382285834bfbb3f047670731b7f3';
  HomeRepoImpl(this.api);
  @override
  Future<Either<Failure, List<ArticleModel>>> getNews({
    String category = 'general',
  }) async {
    try {
      Map<String, dynamic> data = await api.get(
        endPoint: 'top-headlines?country=us&apiKey=$apiKey&category=$category',
      );

      List<ArticleModel> articles = [];
      for (var item in data['articles']) {
        articles.add(ArticleModel.fromJson(item));
      }
      return right(articles);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
            dioException: e,
          ),
        );
      } else {
        return left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }
}
