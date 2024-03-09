import 'package:dio/dio.dart';
import 'package:foodly/features/chapter/data/model/chapter_model.dart';

class ProductApiServices {
  static Future<List<ChapterModel>?> getProductFromAPi() async {
    try {
      Dio dio = Dio();
      final response =
          await dio.get("http://moinulhossainkuet.com/api/chapter10");

      if (response.statusCode == 200) {
        List<dynamic> users = response.data["chapterten"];
        print("sssss" + users.length.toString());
        return users.map((e) => ChapterModel.fromJson(e)).toList();
      } else {
        return null;
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}
