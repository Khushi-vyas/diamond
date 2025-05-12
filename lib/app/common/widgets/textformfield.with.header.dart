import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';

import '../../themes/app.decoration.dart';

class TextFormFieldWithHeader extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?) validator;
  void Function(String)? onChanged;
  TextFormFieldWithHeader(
      {super.key,
      required this.title,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.validator,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimension.kPadding,
              vertical: AppDimension.kPadding / 2),
          child: RichText(
            text: TextSpan(
              text: title,
              style: textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppDimension.kPadding),
          child: TextFormField(
            controller: textEditingController,
            decoration: AppDecoration.textFieldDecoration(hintText: hintText),
            keyboardType: textInputType,
            validator: validator,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
