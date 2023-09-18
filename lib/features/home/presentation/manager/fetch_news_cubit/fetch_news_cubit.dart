import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

part 'fetch_news_state.dart';

class FetchNewsCubit extends Cubit<FetchNewsState> {
  FetchNewsCubit(this.homeRepo) : super(FetchNewsInitial());
  final HomeRepo homeRepo;

  Future<void> getNews({
    required String country,
    String? category,
    String? q,
  }) async {
    emit(FetchNewsLoading());
    var result = await homeRepo.getNews(country: country);
    result.fold(
      (failure) {
        emit(FetchNewsfailure(failure.errMessage));
      },
      (articles) {
        emit(FetchNewsSuccess(articles));
      },
    );
  }
}
