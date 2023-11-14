import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:free_palestine/src/atoms/icons/loved_icon_widget.dart';
import 'package:free_palestine/src/atoms/icons/unloved_icon_widget.dart';
import 'package:free_palestine/src/favourite_screen.dart';
import 'package:free_palestine/src/home_controller.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
    final favouriteState = ref.watch(favouriteControllerProvider);
    return Scaffold(
      appBar: const AppbarImage(),
      body: Center(
        child: articlesState.when(
            data: (articles) {
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(getArticlesControllerProvider);
                  ref.invalidate(favouriteControllerProvider);
                },
                child: Column(
                  children: [
                    const Gap(12.0),
                    Expanded(
                        flex: 0,
                        child: OutlinedButton(
                          onPressed: () {
                            context.pushNamed(FavouriteScreen.routeName);
                          },
                          child: const Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Text('Goto favourite'),
                              VerticalDivider(
                                width: 10,
                                color: Colors.grey,
                              ),
                              Icon(Icons.favorite, color: Colors.red),
                            ],
                          ),
                        )),
                    Expanded(
                      child: ListView.builder(
                        itemCount: articles?.length,
                        itemBuilder: (context, index) {
                          var statusFavourite = favouriteState.contains(
                            articles?[index]['title'],
                          );
                          return Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ListTile(
                                title: Text(articles?[index]['title']),
                                subtitle: Text(articles?[index]['description']),
                                onTap: () {},
                              ),
                              if (statusFavourite)
                                LovedIconWidget(aidi: articles?[index]['title'])
                              else
                                UnlovedIconWidget(aidi: articles?[index]['title']),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (e, st) => Text('error $e'),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
