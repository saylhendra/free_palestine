import 'package:flutter/material.dart';

class AppbarImage extends StatelessWidget implements PreferredSizeWidget {
  const AppbarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('🇵🇸 Free Palestine 🇵🇸'),
      backgroundColor: Colors.black,
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: -100.0,
            right: -110.0,
            top: 10.0,
            bottom: 0.0,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: //palestine flag image
                    DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/originals/c1/24/39/c124398e1a8c8a102619dda3ffb7aeb7.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: //palestine flag image
                  DecorationImage(
                image: NetworkImage('https://i.pinimg.com/originals/c1/24/39/c124398e1a8c8a102619dda3ffb7aeb7.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
