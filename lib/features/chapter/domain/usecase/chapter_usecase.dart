import 'package:foodly/features/chapter/data/model/chapter_model.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/usecase/baseusecase.dart';
import '../../data/repository/chapter_repo_impl.dart';
import '../repository/chapter_repository.dart';

class FetchProductUseCase extends UseCase<DataState<List<ChapterModel>>> {
  @override
  Future<DataState<List<ChapterModel>>> call() {
    ProductRepository productRepository = ProductRepositoryImpl();
    return productRepository.getProduct();
  }
}