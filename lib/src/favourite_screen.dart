import 'package:flutter/material.dart';
import 'package:free_palestine/src/atoms/appbar/appbar_image.dart';
import 'package:free_palestine/src/atoms/icons/loved_icon_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_controller.dart';

class FavouriteScreen extends HookConsumerWidget {
  const FavouriteScreen({super.key});
  static const routeName = 'favourite-screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteState = ref.watch(favouriteControllerProvider);
    return Scaffold(
      appBar: const AppbarImage(),
      body: ListView.builder(
        padding: const EdgeInsets.all(18.0),
        itemCount: favouriteState.length,
        itemBuilder: (context, index) {
          var favourite = favouriteState[index];
          return Card(
            child: ListTile(
              title: Text(favourite),
              trailing: IconButton(
                  onPressed: () {
                    ref.read(favouriteControllerProvider.notifier).removeFavourite(id: favourite['title']);
                  },
                  icon: LovedIconWidget(
                    aidi: favourite,
                  )),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            context.go('/');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
        ],
      ),
    );
  }
}
