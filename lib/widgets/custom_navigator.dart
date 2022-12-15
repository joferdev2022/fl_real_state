import 'package:flutter/material.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on), label: 'Lugares'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'Perfil'),
      ],
    );
  }
}
