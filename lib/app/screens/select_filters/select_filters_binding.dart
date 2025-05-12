import 'package:get/get.dart';

import ' select_filters_controller.dart';

class SelectFiltersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectFiltersController());
  }
}
