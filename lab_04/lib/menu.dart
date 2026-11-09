import 'package:flutter/material.dart';

const TextStyle itemStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text('Android ATC Pizza Place'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'vegetable');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/pizza_2.png', width: 40),
                title: const Text('Vegetable Pizza', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'cheese');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/pizza_1.png', width: 40),
                title: const Text('Cheese Pizza', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'fries');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/fries.png', width: 40),
                title: const Text('Box of Fries', style: itemStyle),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'order');
            },
            child: const Text('View Order Summary'),
          ),
        ],
      ),
    );
  }
}
