import 'package:flutter/material.dart';
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
          children: const [
            Text(
              "SideBar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Button(text: "Mi Perfil", icon: Icons.person_rounded),
            Button(text: "Ir de Compras", icon: Icons.shopping_bag),
            Button(text: "Ver mi carrito", icon: Icons.shopping_cart),
            Button(text: "Cerrar Sesion", icon: Icons.logout),
          ],
        ),
      ),
    );
  }
}
