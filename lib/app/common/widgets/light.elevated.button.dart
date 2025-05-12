import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';

class LightElevatedButton extends StatelessWidget {
  final String title;
  final Function() onPress;
  const LightElevatedButton(
      {super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.themeLightColor.withOpacity(0.2),
        elevation: 0,
        side: const BorderSide(
          color: AppTheme.themeColor,
        ),
      ),
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimension.kPadding / 2,
            vertical: AppDimension.kPadding / 8),
        child: Text(
          title,
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }
}
