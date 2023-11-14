//unloved icon button widget
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:free_palestine/src/home_controller.dart';

class UnlovedIconWidget extends ConsumerWidget {
  final String? aidi;
  const UnlovedIconWidget({super.key, this.aidi});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.read(favouriteControllerProvider.notifier).addFavourite(
              id: aidi,
            );
      },
      icon: const Icon(Icons.favorite_border, color: Colors.grey),
    );
  }
}
