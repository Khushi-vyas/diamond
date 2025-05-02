import 'package:diamond_data/app/themes/app.decoration.dart';
import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';

class MobileNumberInputField extends StatefulWidget {
  const MobileNumberInputField({Key? key}) : super(key: key);

  @override
  State<MobileNumberInputField> createState() => _MobileNumberInputFieldState();
}

class _MobileNumberInputFieldState extends State<MobileNumberInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimension.kRadius),
        border: Border.all(
          color: AppTheme.themeBorderColor,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.10,
            child: DropdownMenu(
              width: MediaQuery.of(context).size.width * 0.10,
              inputDecorationTheme: const InputDecorationTheme(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppTheme.themeBorderColor,
                  ),
                ),
                isDense: true,
                contentPadding: EdgeInsets.only(),
              ),
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: "INDIA", label: "India"),
                DropdownMenuEntry(value: "UAE", label: "UAE"),
                DropdownMenuEntry(value: "SAUDI", label: "Saudi"),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            child: TextField(
              decoration: AppDecoration.textFieldDecoration().copyWith(
                border: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
