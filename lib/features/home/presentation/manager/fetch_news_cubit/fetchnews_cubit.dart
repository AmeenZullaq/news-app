import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fetchnews_state.dart';

class FetchnewsCubit extends Cubit<FetchnewsState> {
  FetchnewsCubit() : super(FetchnewsInitial());
}
