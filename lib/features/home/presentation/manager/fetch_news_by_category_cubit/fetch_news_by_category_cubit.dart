import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

part 'fetch_news_by_category_state.dart';

class FetchNewsByCategoryCubit extends Cubit<FetchNewsByCategoryState> {
  FetchNewsByCategoryCubit(this.homeRepo) : super(FetchNewsByCategoryInitial());
  final HomeRepo homeRepo;

  Future<void> getNewsByCategory({required String category}) async {
    emit(FetchNewsByCategoryLoading());
    var result = await homeRepo.getNews(category: category);
    result.fold(
      (failure) {
        emit(FetchNewsByCategoryFailure(failure.errMessage));
      },
      (articles) {
        emit(FetchNewsByCategorySuccess(articles));
      },
    );
  }
}
