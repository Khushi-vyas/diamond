import 'package:diamond_data/app/routes/app.routes.dart';
import 'package:diamond_data/utils/constants/app.constants.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import ' select_filters_controller.dart';
import '../../themes/app.theme.dart';

class SelectFiltersScreen extends StatelessWidget {
  final SelectFiltersController diamondDataController =
      Get.put(SelectFiltersController());

  final ScrollController scrollController = ScrollController();

  SelectFiltersScreen({super.key}) {
    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent - 50 &&
            !diamondDataController.isLoading.value &&
            !diamondDataController.isLastPage.value) {
          diamondDataController.getAllDiamondData();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Select Filters')),
      body: Padding(
        padding: const EdgeInsets.all(AppDimension.kPadding),
        child: Column(
          children: [
            Text('Weight', style: Theme.of(context).textTheme.bodyLarge),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width / 2 - AppDimension.mediumPadding,
                  child: TextFormField(),
                ),
                SizedBox(
                  width: size.width / 2 - AppDimension.mediumPadding,
                  child: TextFormField(),
                ),
              ],
            ),
            SizedBox(
              height: AppDimension.kPadding,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.themeColor,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppDimension.kRadius)),
                  // side: const BorderSide(
                  //   color: AppTheme.themeTextColor,
                  // ),
                ),
                onPressed: () => Get.toNamed(AppRoutes.diamondDataRoute),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppDimension.kPadding - 2),
                  child: Text(
                    'Get Data',
                    style: textTheme.bodyMedium?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
