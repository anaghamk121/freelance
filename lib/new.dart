import 'package:flutter/material.dart';

class OrderPlacementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Your Order'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Summary
            Text(
              'Product Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Image.network('https://via.placeholder.com/150'),
              title: Text('Product Name'),
              subtitle: Text('Quantity: 1'),
              trailing: Text('\$100.00'),
            ),
            Divider(),

            // Delivery Information
            Text(
              'Delivery Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('123 Main Street, City'),
              subtitle: Text('Deliver to this address'),
              trailing: Icon(Icons.edit),
            ),
            Divider(),

            // Payment Method
            Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Credit Card'),
              subtitle: Text('Visa **** 1234'),
              trailing: Icon(Icons.edit),
            ),
            Divider(),

            // Order Summary
            Spacer(),
            Text(
              'Order Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('\$100.00'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping'),
                Text('\$10.00'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text('\$110.00', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            // Place Order Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Place order logic here
                },
                child: Text('Place Order'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OrderPlacementScreen(),
  ));
}
