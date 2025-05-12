import 'package:diamond_data/app/Models/diamond_model.dart';
import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:diamond_data/utils/constants/app.constants.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'diamond_data_controller.dart';

class DiamondDataScreen extends StatelessWidget {
  final DiamondDataController diamondDataController =
      Get.put(DiamondDataController());

  final ScrollController scrollController = ScrollController();

  DiamondDataScreen({super.key}) {
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
    final TextTheme textTheme = Theme.of(context).textTheme;
    final checkboxselected = false.obs;
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: const Text('Diamond List')),
        body: Obx(
          () => diamondDataController.isLoading.value &&
                  diamondDataController.diamondDataList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : diamondDataController.diamondDataList.isEmpty
                  ? const Center(child: Text('No data found'))
                  : Column(
                      children: [
                        const SizedBox(
                          height: AppDimension.kPadding,
                        ),
                        Expanded(
                          child: ListView.builder(
                            controller: scrollController,
                            itemCount:
                                diamondDataController.diamondDataList.length,
                            itemBuilder: (context, index) {
                              Diamond data =
                                  diamondDataController.diamondDataList[index];
                              var diamondData = {
                                'Barcode': data.barCode.toString(),
                                'Weight': data.polishWeight.toString(),
                                'Shape': data.shape.toString(),
                              };
                              return DiamondCheckBox(
                                checkboxselected: diamondDataController
                                    .checkboxSelections[index],
                                diamondData: diamondData,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.all(AppDimension.kPadding),
          child: Container(
            width: size.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Copy",
                  style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.themeColorShade100)),
            ),
          ),
        ));
  }
}

class DiamondCheckBox extends StatelessWidget {
  const DiamondCheckBox(
      {super.key, required this.checkboxselected, required this.diamondData});
  final RxBool checkboxselected;
  final Map<String, String> diamondData;

  @override
  Widget build(BuildContext context) {
    final labels = diamondData.keys.toList();
    final values = diamondData.values.toList();
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimension.kPadding,
        vertical: AppDimension.kPadding / 2,
      ),
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: checkboxselected.value
                  ? AppTheme.themeColorShade900
                  : AppTheme.themeColorShade100,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: checkboxselected.value,
            onChanged: (val) {
              checkboxselected.value = val!;
            },
            activeColor: AppTheme.themeColorShade900,
            tileColor: checkboxselected.value
                ? AppTheme.themeAccentColor.withOpacity(0.02)
                : Colors.transparent,
            title: Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: labels
                        .map(
                          (label) => Text(
                            label,
                            style: textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        )
                        .toList(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      labels.length,
                      (_) => Text(
                        " : ",
                        style: textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: values
                        .map((value) => Text(
                              value,
                              style: textTheme.bodyLarge,
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
