import 'package:get/get.dart';

class ProductScreenController extends GetxController {
  RxList <Map<String, dynamic>> products = [
    {
      'id': 1,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_1.jpg',
      'rating': '4.6',
      'isFavorite': false
    },
    {
      'id': 2,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_2.jpg',
      'rating': '4.6',
      'isFavorite': true
    },
    {
      'id': 3,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_3.jpg',
      'rating': '4.6',
      'isFavorite': true
    },
    {
      'id': 4,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_4.jpg',
      'rating': '4.6',
      'isFavorite': true
    },
    {
      'id': 5,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_5.jpg',
      'rating': '4.6',
      'isFavorite': false
    },
    {
      'id': 6,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_6.jpg',
      'rating': '4.6',
      'isFavorite': true
    },
    {
      'id': 7,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_7.jpg',
      'rating': '4.6',
      'isFavorite': true
    },
    {
      'id': 8,
      'title': 'Greenfab',
      'description': 'Cotton khadi kurta set',
      'price': "₹1500",
      'image': 'assets/images/kurta_8.jpg',
      'rating': '4.6',
      'isFavorite': false
    }
  ].obs;
  void toggleFavorite(int id) {
    int index = products.indexWhere((product) => product['id'] == id);
    if (index != -1) {
      products[index]['isFavorite'] = !(products[index]['isFavorite'] as bool);
      products.refresh();
    }
  }
}
