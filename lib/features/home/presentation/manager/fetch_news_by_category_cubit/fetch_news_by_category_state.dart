part of 'fetch_news_by_category_cubit.dart';

abstract class FetchNewsByCategoryState extends Equatable {
  const FetchNewsByCategoryState();

  @override
  List<Object> get props => [];
}

final class FetchNewsByCategoryInitial extends FetchNewsByCategoryState {}

final class FetchNewsByCategoryLoading extends FetchNewsByCategoryState {}

final class FetchNewsByCategorySuccess extends FetchNewsByCategoryState {
  final List<ArticleModel> articles;

  const FetchNewsByCategorySuccess(this.articles);
}

final class FetchNewsByCategoryFailure extends FetchNewsByCategoryState {
  final String errMessage;

  const FetchNewsByCategoryFailure(this.errMessage);
}
