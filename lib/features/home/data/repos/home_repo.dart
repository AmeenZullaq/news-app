import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ArticleModel>>> getNews({
    required String category,
  });
}
