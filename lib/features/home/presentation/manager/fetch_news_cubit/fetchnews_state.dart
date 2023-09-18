part of 'fetchnews_cubit.dart';

sealed class FetchnewsState extends Equatable {
  const FetchnewsState();

  @override
  List<Object> get props => [];
}

final class FetchnewsInitial extends FetchnewsState {}
