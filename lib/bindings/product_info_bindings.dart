import 'package:get/get.dart';
import '../controller/product_screen_controller.dart';
import '../screens/product_info.dart';

class ProductInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductScreenController>( ProductScreenController());
  }
}
