import 'package:flutter/material.dart';
import 'package:footwear_client/pages/shopping_cart.dart';
import 'package:get/get.dart';

import '../model/product/product.dart';
import 'cart_page.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Product product = Get.arguments['data'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.image ?? '',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              product.name ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),

            ),
            const SizedBox(height: 20,),
            Text(
                product.description ?? '',
              style: const TextStyle(
                fontSize: 16,
                height: 1.5
              ),

            ),
            const SizedBox(height: 20,),
            Text(
              'Rs. ${product.price ?? ''}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),

            ),
            const SizedBox(height: 20,),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
                labelText: 'Enter your Billing Address',
            ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Get.snackbar('Success', 'Cart added successfully',colorText: Colors.green);
                  // Navigate to the CartPage
                  Get.to(ShoppingCart());
                },
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),


            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.indigoAccent
                ), onPressed: () {
                  Get.snackbar('Success', 'Payment is successful',colorText: Colors.green);
              }, child: const Text(
                'Buy Now',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
