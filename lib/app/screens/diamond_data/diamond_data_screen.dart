import 'package:diamond_data/app/common/widgets/footer.dart';
import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'diamond_data_controller.dart';

class DiamondDataScreen extends StatelessWidget {

 final DiamondDataController diamondDataController =
        Get.put(DiamondDataController());
         
  final ScrollController scrollController = ScrollController();

  DiamondDataScreen({super.key}) {
  scrollController.addListener(() {
    if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 50 &&
        !diamondDataController.isLoading.value &&
        !diamondDataController.isLastPage.value) {
      diamondDataController.getAllDiamondData();
    }
  });
}

    
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diamond List')),
      body: Obx(() =>  
          diamondDataController.isLoading.value && diamondDataController.diamondDataList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : diamondDataController.diamondDataList.isEmpty
                  ? const Center(child: Text('No data found'))
                  : Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            controller: scrollController,
                            itemCount: diamondDataController.diamondDataList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(diamondDataController.diamondDataList[index].barCode ?? ""),
                                subtitle: Text(diamondDataController.diamondDataList[index].diamondType ?? ""),
                              );
                            },
                          ),
                        ),
                     
                      ],
                    )),
      
    );
  }
}

 