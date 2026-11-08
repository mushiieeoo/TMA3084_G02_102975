import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Vegetable Pizza'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/pizza_2.png', width: 200),
            const Text(
              'Vegetable Pizza is a pizza with mixed '
              'vegetable mix on top of it',
            ),
          ],
        ),
      ),
    );
  }
}
