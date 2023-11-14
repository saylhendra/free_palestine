import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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

@Riverpod(keepAlive: true)
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

@Riverpod(keepAlive: true)
class FavouriteController extends _$FavouriteController {
  @override
  List build() {
    return [];
  }

  void addFavourite({required String? id}) {
    ref.watch(getArticlesControllerProvider).whenData((value) {
      if (id != null && value != null) {
        var data = value.firstWhere((element) => element['title'] == id);
        // state = [...state, data['title']];
        state = [...state, data['title']];
      }
    });
  }

  void removeFavourite({String? id}) {
    debugPrint('$id');
    if (id != null) {
      // state = [...state.where((element) => element != id)];
      state = state.where((element) => element != id).toList();
    }
  }
}
