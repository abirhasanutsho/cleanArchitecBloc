import 'package:foodly/features/chapter/data/model/chapter_model.dart';

import '../../../../core/resources/resources.dart';

abstract class ProductRepository {
  Future<DataState<List<ChapterModel>>> getProduct();
}