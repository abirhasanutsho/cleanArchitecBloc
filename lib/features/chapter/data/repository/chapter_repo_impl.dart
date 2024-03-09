import 'dart:io';

import 'package:dio/dio.dart';
import 'package:foodly/features/chapter/data/model/chapter_model.dart';

import '../../../../core/resources/resources.dart';
import '../../domain/repository/chapter_repository.dart';
import '../data_sources/chapter_data_sources.dart';

class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<DataState<List<ChapterModel>>> getProduct() async {
    try {
      List<ChapterModel>? productModel =
          await ProductApiServices.getProductFromAPi();
      return DataSuccess(productModel!);
    } on DioException catch (e) {
      return DataFailed(e.message.toString());
    }
  }
}
