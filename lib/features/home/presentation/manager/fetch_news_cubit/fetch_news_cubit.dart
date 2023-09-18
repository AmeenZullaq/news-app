import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fetch_news_state.dart';

class FetchNewsCubit extends Cubit<FetchNewsState> {
  FetchNewsCubit() : super(FetchNewsInitial());
}
