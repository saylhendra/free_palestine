import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class GreetingController extends _$GreetingController {
  @override
  Future<String> build({required String namex}) async {
    await Future.delayed(const Duration(seconds: 1));
    return 'Hello $namex';
  }
}

@riverpod
class GetArticlesController extends _$GetArticlesController {
  @override
  FutureOr<List?> build() async {
    var dio = Dio();
    var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=8c8424ec5c7d4bcba12aff8062f1e40c');
    if (response.statusCode == 200) {
      return response.data['articles'];
    } else {
      return null;
    }
  }
}
