import 'package:flutter/material.dart';
import 'package:mediaquery_app/screens/second_screen.dart';
import 'package:mediaquery_app/widgets/button.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      width: 150,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SideBar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Button(text: "Mi Perfil", icon: Icons.person_rounded),
            // Button(
            //   text: "Ir de Compras",
            //   icon: Icons.shopping_bag,
            //   route: const SecondScreen(),
            // ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_bag),
                ),
                const Text("Ir de Compras")
              ],
            ),
            const Button(text: "Ver mi carrito", icon: Icons.shopping_cart),
            const Button(text: "Cerrar Sesion", icon: Icons.logout),
          ],
        ),
      ),
    );
  }
}
