import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:free_palestine/src/home_controller.dart';

import 'atoms/appbar/appbar_image.dart';

class NewsDetailScreen extends ConsumerStatefulWidget {
  final String idNews;
  const NewsDetailScreen({
    super.key,
    required this.idNews,
  });

  @override
  ConsumerState<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends ConsumerState<NewsDetailScreen> {
  // late List _list = [];
  // String idNews = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final articlesState = ref.watch(getArticlesControllerProvider);
    return Scaffold(
      appBar: const AppbarImage(),
      body: Center(
        child: articlesState.when(
            data: (articles) {
              return ListView.builder(
                itemCount: articles?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(articles?[index]['title']),
                    subtitle: Text(articles?[index]['description']),
                    onTap: () {},
                  );
                },
              );
            },
            error: (e, st) => Text('error $e'),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }

  void getIdNews() {
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    setState(() {
      // idNews = data['idNews'];
    });
  }
}
