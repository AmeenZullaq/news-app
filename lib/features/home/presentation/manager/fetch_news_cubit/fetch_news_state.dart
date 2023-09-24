part of 'fetch_news_cubit.dart';

abstract class FetchNewsState extends Equatable {
  const FetchNewsState();

  @override
  List<Object> get props => [];
}

final class FetchNewsInitial extends FetchNewsState {}

final class FetchNewsLoading extends FetchNewsState {}

final class FetchNewsfailure extends FetchNewsState {
  final String errMessage;

  const FetchNewsfailure(this.errMessage);
}

final class FetchNewsSuccess extends FetchNewsState {
  final List<ArticleModel> articles;

  const FetchNewsSuccess(this.articles);
}
