import 'package:flutter/material.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                'https://assets.ajio.com/medias/sys_master/root/20231211/x7GW/6576f8cfddf7791519c10bd8/-473Wx593H-466858508-blue-MODEL7.jpg',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
            ),
            const SizedBox(height: 20,),
            Text(
                'Puma',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),

            ),
            const SizedBox(height: 20,),
            Text(
              'Product Description',
              style: const TextStyle(
                fontSize: 16,
                height: 1.5
              ),

            ),
            const SizedBox(height: 20,),
            Text(
              'Rs. 3000',
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
                  padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.indigoAccent
                ), onPressed: () {  }, child: const Text(
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
