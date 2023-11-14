import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home_controller.dart';

class LovedIconWidget extends ConsumerWidget {
  final String? aidi;
  const LovedIconWidget({
    super.key,
    this.aidi,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.read(favouriteControllerProvider.notifier).removeFavourite(
              id: aidi,
            );
      },
      icon: const Icon(Icons.favorite, color: Colors.red, size: 30),
    );
  }
}
