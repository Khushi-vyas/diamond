import 'package:get/get.dart';

import 'diamond_data_controller.dart';

class DiamondDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiamondDataController());
  }
}
