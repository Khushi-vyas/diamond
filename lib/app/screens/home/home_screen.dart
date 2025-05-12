import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController diamondDataController = Get.put(HomeController());

  final ScrollController scrollController = ScrollController();

  HomeScreen({super.key}) {
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 50 &&
          !diamondDataController.isLoading.value &&
          !diamondDataController.isLastPage.value) {
        diamondDataController.getAllDiamondData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimension.kPadding,
          vertical: AppDimension.kPadding,
        ),
        child: GridView.count(
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          children: [
            ListTile(
              title: const Text("Stock"),
              // subtitle: Text("Stock"),
              leading: const Icon(Icons.show_chart),
              onTap: () {
                Get.toNamed('/select-filters');
              },
            ),
            ListTile(
              title: const Text("Stock"),
              subtitle: const Text("Stock"),
              leading: const Icon(Icons.home),
              onTap: () {
                // Get.toNamed('/stock');
              },
            )
          ],
        ),
      ),
    );
  }
}
