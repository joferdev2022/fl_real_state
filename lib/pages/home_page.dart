import 'package:feed_app/widgets/custom_card.dart';
import 'package:feed_app/widgets/custom_navigator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Inicio',
          // textAlign: TextAlign.center,
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
      ),
      body: const Center(
        child: CustomCard(),
      ),
      bottomNavigationBar: const CustomNavigator(),
    );
  }
}
