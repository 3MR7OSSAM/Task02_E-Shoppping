import 'package:flutter/material.dart';

Widget deliveryInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "Delivery to",
        style: TextStyle(fontSize: 14, color: Colors.black54),
      ),
      DropdownButton<String>(
        value: 'Madinaty,New Cairo,Egypt',
        style: TextStyle(fontSize: 14, color: Colors.black54),
        items: const [
          DropdownMenuItem(
              value: 'Madinaty,New Cairo,Egypt',
              child: Text('Madinaty,New Cairo,Egypt')),
          DropdownMenuItem(
              value: 'Maadi,Egypt',
              child: Text('Cairo,Egypt')),

        ],
        onChanged: (value) {
          // Update delivery city
        },
      ),
    ],
  );
}
