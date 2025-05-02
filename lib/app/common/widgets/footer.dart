import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app.theme.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      "@safeTechnologies".tr,
      style: textTheme.bodySmall?.copyWith(
        color: AppTheme.themeTextColor.withOpacity(0.5),
        fontSize: 11,
      ),
      textAlign: TextAlign.center,
    );
  }
}
