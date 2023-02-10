import 'package:flutter/material.dart';

class VerticalAppBar extends StatelessWidget {
  const VerticalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        VerticalButton(icon: Icons.person_rounded),
        VerticalButton(icon: Icons.shopping_bag),
        VerticalButton(icon: Icons.shopping_cart),
        VerticalButton(icon: Icons.logout),
      ],
    );
  }
}

class VerticalButton extends StatelessWidget {
  final IconData icon;
  const VerticalButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print("Button Pressed");
      },
      icon: Icon(icon),
    );
  }
}
