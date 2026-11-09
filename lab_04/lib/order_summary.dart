import 'package:flutter/material.dart';

import 'order.dart';

// Assumes lib/order.dart provides:
//   double orderTotal(double unitPrice, int quantity)
// Adjust the call in build() if your signature differs.

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({
    super.key,
    this.itemName = 'Cheese Pizza',
    this.quantity = 2,
    this.unitPrice = 12.50,
  });

  final String itemName;
  final int quantity;
  final double unitPrice;

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(unitPrice, quantity);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text('Order Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item: $itemName', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 12),
            Text('Quantity: $quantity', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 12),
            Text(
              'Total: RM ${total.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
