import 'package:diamond_data/app/data/repositories/api.repository.dart';
import 'package:get/get.dart';

import '../../Models/diamond_model.dart';

class HomeController extends GetxController {
  final isLoading = false.obs;
  var diamondDataList =[].obs;
  final page = 1.obs;
  final pageSize = 20;
  final totalPages = 0.obs;

  final isLastPage = false.obs;
  
 
  @override
  void onInit() {
    getAllDiamondData();
    super.onInit();
  }

  @override
  void onClose() {
    diamondDataList.clear();
    page.value = 1;
   
    totalPages.value = 0;
    isLoading.value = false;
    isLastPage.value = false;
    super.onClose();
  }

  @override
  void dispose() {
    diamondDataList.clear();
    page.value = 1;
   
    totalPages.value = 0;
    isLoading.value = false;
    isLastPage.value = false;
    super.dispose();
  }

  

getAllDiamondData() async {
  if (isLastPage.value || isLoading.value) return;

  isLoading.value = true;

  try {
    final response = await ApiRepository.instance.getAllDiamondData(
      page: page.value,
      pageSize: pageSize,
    );


    if (response.isNotEmpty) {
     
      diamondDataList.addAll(response['diamonds'].map((e) => Diamond.fromJson(e)).toList());
      totalPages.value = response['totalPages'];
    }

    
 if (page.value >= totalPages.value || response.isEmpty) {
        isLastPage.value = true;
      } else {
        page.value++;
      }
   print('Page: ${page.value}, Total Pages: ${totalPages.value}');

  } catch (e) {
    Get.snackbar('Error', 'Server error: ${e.toString()}');
    print(e.toString());
  } finally {
    isLoading.value = false;
  }
}

}