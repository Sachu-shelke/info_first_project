import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:info_first/controller/product_screen_controller.dart';
import 'package:info_first/screens/product_info.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductScreenController productController = Get.put(ProductScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Kurta Sets"),
        leading:  Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return GridView.builder(
                itemCount: productController.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  final product = productController.products[index];

                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () => Get.to(
                            ProductInfo(
                              image: product['image'],
                              index: index,
                            ),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                product['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.aspectRatio*450,
                          left: 15,
                          child: Container(
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey.shade300,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Text(product['rating'].toString())
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            padding:  EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        product['title'].toString(),
                                        style:  TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        product['isFavorite']
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: product['isFavorite']
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () {
                                        productController.toggleFavorite(product['id']);
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  product['description'].toString(),
                                  style:  TextStyle(fontSize: 11, color: Colors.grey),
                                ),
                                Text(
                                  "${product['price'].toString()}",
                                  style:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
