import 'package:flutter/material.dart';
import 'package:footwear_client/pages/login_page.dart';
import 'package:footwear_client/pages/product_description_page.dart';
import 'package:footwear_client/widgets/drop_down_button.dart';
import 'package:footwear_client/widgets/product_card.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../widgets/multi_select_drop_down.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Footwear Store', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){
            GetStorage box = GetStorage();
            box.erase();
            Get.offAll(LoginPage());
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Column(

        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Chip(label: Text('Category')),
                  );
            }
            ),
          ),
          Row(
            children: [
              Flexible(
                child: DropDownBtn(items: ['Rs: Low to High', 'Rs: High to Low'],
                    selectedItemText: 'Sort',
                    onSelected: (selected){}),
              ),
              Flexible(child: MultiSelectDropDown(
                items: ['item1','item2','item3'],
                onSelectionChanged: (selectedItems ) {  },
              )),
            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8
                ),
                itemCount: 10,
                itemBuilder: (context,index){
                  return ProductCard(
                    name: 'Puma',
                    imageUrl: 'https://assets.ajio.com/medias/sys_master/root/20231211/x7GW/6576f8cfddf7791519c10bd8/-473Wx593H-466858508-blue-MODEL7.jpg',
                    price: 2000,
                    offerTag: '20% off', onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProductDescriptionPage()),
                      );
                  },);
                }),
          )
        ],
      ),
    );
  }
}
