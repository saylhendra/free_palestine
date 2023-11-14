import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/src/favourite_screen.dart';
import 'package:go_router/go_router.dart';

import 'atoms/appbar/appbar_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    doFetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarImage(),
        body: RefreshIndicator(
          onRefresh: () async {
            doFetchData();
          },
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
              itemCount: _list.length,
              itemBuilder: (context, index) {
                var data = _list[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          context.pushNamed('detail', extra: {'idNews': data['id'] ?? ''});
                        },
                        title: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: data['urlToImage'] != null ? Image.network(data['urlToImage']) : const SizedBox.shrink()),
                            Text(data['title'] ?? ''),
                          ],
                        ),
                        subtitle: Text(data['description'] ?? ''),
                      ),
                    ),
                  ),
                );
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {
            if (index == 1) {
              context.pushNamed(FavouriteScreen.routeName);
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
          ],
        ));
  }

  void doFetchData() async {
    var dio = Dio();
    var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=8c8424ec5c7d4bcba12aff8062f1e40c');
    setState(() {
      _list = response.data['articles'];
    });
  }
}
