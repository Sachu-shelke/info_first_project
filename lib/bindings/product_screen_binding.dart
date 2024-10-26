import 'package:get/get.dart';
import '../controller/product_screen_controller.dart';

class ProductScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductScreenController>( ProductScreenController());
  }
}
