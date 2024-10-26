import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:info_first/widgets/common_container.dart';
import 'package:info_first/widgets/common_icon.dart';
import 'package:info_first/widgets/common_textfield.dart';

import '../controller/product_screen_controller.dart';

class ProductInfo extends StatefulWidget {
  final String image;
  final int index;

  const ProductInfo({super.key, required this.image, required this.index});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  final ProductScreenController productController = Get.put(ProductScreenController());
  TextEditingController pincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final product = productController.products[widget.index];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    child: Image.asset(widget.image, fit: BoxFit.contain),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Get.back(),
                          child: Icon(Icons.arrow_back),
                        ),
                        Spacer(),
                        CommonIcons(
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          icon: Icons.home_outlined,
                        ),
                        SizedBox(width: 20),
                        CommonIcons(
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          icon: Icons.shopping_bag_outlined,
                        ),
                        SizedBox(width: 10),
                        CommonIcons(
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          icon: Icons.share,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: CommonContainer(
                      height: 30,
                      width: 40,
                      hintText: product['rating'].toString(),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(product['title'].toString()),
                subtitle: Text(product['description'].toString()),
                trailing: IconButton(
                  icon: Icon(
                    product['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                    color: product['isFavorite'] ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    productController.toggleFavorite(product['id']);
                  },
                ),
              ),
              // Price section
              Padding(
                padding:  EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("₹2000", style: TextStyle(color: Colors.grey, fontSize: 10)),
                    SizedBox(width: 10),
                    Text(product['price'].toString()),
                    SizedBox(width: 10),
                    Text("25% off", style: TextStyle(color: Colors.red, fontSize: 10)),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("inclusive of all taxes", style: TextStyle(color: Colors.green, fontSize: 10)),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Available Options", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              // Size section
              Padding(
                padding:  EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Selected Size: XS", style: TextStyle(color: Colors.green, fontSize: 10)),
                    Text("Size Chart", style: TextStyle(color: Colors.lightGreen, fontSize: 10)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: CommonContainer(
                      hintText: 'XS',
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Flexible(
                    child: CommonContainer(
                      hintText: 'S',
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.green),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Flexible(
                    child: CommonContainer(
                      hintText: 'M',
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Flexible(
                    child: CommonContainer(
                      hintText: 'L',
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Flexible(
                    child: CommonContainer(
                      hintText: 'XL',
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              // Delivery and services
              Padding(
                padding:  EdgeInsets.only(bottom: 8.0, left: 15),
                child: Row(
                  children: [
                    Text("Delivery and services", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonTextfield(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 50,
                    controller: pincodeController,
                    hintText: 'Enter Pincode',
                  ),
                  CommonContainer(
                    width: MediaQuery.of(context).size.width * 0.3,
                    hintText: 'Verify',
                    style: TextStyle(color: Colors.white),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
              // Product Details
              Column(
                children: [
                  Row(
                    children: [
                      Text("Product Details"),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Lorem ipsum: dolor s'),
                      SizedBox(width: 80),
                      Text('Lorem ipsum: dolor'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Lore: dolor sit amet'),
                      SizedBox(width: 80),
                      Text('Lorem ipsum: dolor'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Lorem ipsum: dolor'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Lorem ipsum: dolor'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Custom Bottom Navigation Bar with two containers
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.green),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Add To Bag',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Wishlist',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
