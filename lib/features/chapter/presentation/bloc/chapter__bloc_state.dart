import 'package:equatable/equatable.dart';
import 'package:foodly/features/chapter/data/model/chapter_model.dart';

abstract class HomeScreenState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeScreenInitial extends HomeScreenState {}

class HomeScreenLoading extends HomeScreenState {}

class HomeScreenSuccess extends HomeScreenState {
  final List<ChapterModel> chapters;

  HomeScreenSuccess(this.chapters);

  @override
  List<Object?> get props => [chapters];
}

class HomeScreenError extends HomeScreenState {
  final String message;

  HomeScreenError(this.message);

  @override
  List<Object?> get props => [message];
}
