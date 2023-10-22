import 'package:dio/dio.dart';
import 'package:task_three/models/screen_models.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);
  Future<List<ScreenModel>> getToHeadLines() async {
    try {
      var response = await dio.get('https://api.quotable.io/quotes');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> results = jsonData['results'];
      List<ScreenModel> resultList = [];
      for (var result in results) {
        ScreenModel resultModel = ScreenModel.fromjson(result);
        resultList.add(resultModel);
      }
      return resultList;
    } catch (e) {
      return [];
    }
  }
  
}
