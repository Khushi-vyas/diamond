import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';

import '../../themes/app.theme.dart';

class DarkElevatedButton extends StatelessWidget {
  final String title;
  final Function()? onPress;
  const DarkElevatedButton(
      {Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.themeColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimension.kRadius)),
        // side: const BorderSide(
        //   color: AppTheme.themeTextColor,
        // ),
      ),
      onPressed: onPress,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppDimension.kPadding - 2),
        child: Text(
          title,
          style: textTheme.bodyMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
