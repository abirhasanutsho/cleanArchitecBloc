import 'package:bloc/bloc.dart';
import 'package:foodly/features/chapter/data/repository/chapter_repo_impl.dart';
import 'package:foodly/features/chapter/domain/repository/chapter_repository.dart';

import '../../../../core/resources/resources.dart';
import '../../data/model/chapter_model.dart';
import 'chapter__bloc_state.dart';
import 'chapter_bloc_event.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final ProductRepository repository = ProductRepositoryImpl(); // Instance of the repository

  HomeScreenBloc() : super(HomeScreenInitial()) {
    on<HomeScreenDataFetchEvent>(_mapEventToState);
  }

  void _mapEventToState(
      HomeScreenEvent event, Emitter<HomeScreenState> emit) async {
    if (event is HomeScreenDataFetchEvent) {
      emit(HomeScreenLoading());
      try {
        DataState<List<ChapterModel>>? model = await repository.getProduct();
        if (model != null && model is DataSuccess) {
          emit(HomeScreenSuccess(model.data!));
        } else {
          emit(HomeScreenError('Error fetching data'));
        }
      } catch (error, stackTrace) {
        print('Error: $error');
        print('Stack Trace: $stackTrace');
        emit(HomeScreenError(error.toString()));
      }
    }
  }
}
