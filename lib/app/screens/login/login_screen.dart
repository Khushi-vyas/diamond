import 'package:diamond_data/app/common/widgets/footer.dart';
import 'package:diamond_data/app/themes/app.decoration.dart';
import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    final TextTheme textTheme = Theme.of(context).textTheme;
    // final Size size = MediaQuery.of(context).size;
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: AppDimension.kPadding * 10,
              ),
              // ClipPath(
              //   clipper: WaveClipperTwo(),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           AppTheme.themeColorShade900,
              //           AppTheme.themeColor.withOpacity(0.5),
              //         ],
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //       ),
              //     ),
              //     height: 100,
              //   ),
              // ),
              // //const Spacer(),
              // const SizedBox(
              //   height: 50,
              // ),
               Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimension.kPadding,
                  vertical: AppDimension.kPadding / 8,
                ),
                child: Text(
                  "welcome".tr,
                  style: GoogleFonts.pacifico(
                      fontSize: 36, color: AppTheme.themeTextColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimension.kPadding),
                child: Text(
                  "pleaseFillInCredentialsToContinue".tr,
                  style: textTheme.bodySmall,
                ),
              ),
              const SizedBox(height: AppDimension.kPadding * 2),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimension.kPadding),
                child: Text(
                  "name".tr,
                  style: textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimension.kPadding,
                  vertical: AppDimension.kPadding / 4,
                ),
                child: TextFormField(
                  //  controller: loginController.textEditingControllerName,
                  decoration: AppDecoration.textFieldDecoration(),
                  textInputAction: TextInputAction.next,
                  onChanged: (val) {
                    loginController.textEditingControllerCustomerId.value = val;
                  },
                  // validator: (val) {
                  //   if (val!.isEmpty || val == "") {
                  //     return "Please enter name.";
                  //   }
                  //   return null;
                  // },
                ),
              ),
              const SizedBox(
                height: AppDimension.kPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimension.kPadding),
                child: Text(
                  "password".tr,
                  style: textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimension.kPadding,
                  vertical: AppDimension.kPadding / 4,
                ),
                child: TextFormField(
                  obscureText: true,
                  //  controller: loginController.textEditingControllerPassword,
                  decoration: AppDecoration.textFieldDecoration(),
                  onChanged: (val) {
                    loginController.textEditingControllerPassword.value = val;
                  },
                  // validator: (val) {
                  //   if (val!.isEmpty || val == "") {
                  //     return "Please enter password.";
                  //   }
                  //   return null;
                  // },
                ),
              ),
              const SizedBox(
                height: AppDimension.kPadding,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimension.kPadding),
                  child: Obx(
                    () => loginController.isLoading.value
                        ? const CircularProgressIndicator()
                        : SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.themeColor,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        AppDimension.kRadius)),
                                // side: const BorderSide(
                                //   color: AppTheme.themeTextColor,
                                // ),
                              ),
                              onPressed: loginController.canLogin
                                  ? () => loginController.login()
                                  : null,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: AppDimension.kPadding - 2),
                                child: Text(
                                  "login".tr,
                                  style: textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
              ),
              // const Spacer(
              //   flex: 2,
              // ),
            ],
          ),
        ),
        // bottomNavigationBar: ClipPath(
        //   clipper: WaveClipperOne(flip: true, reverse: true),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //         colors: [
        //           AppTheme.themeDarkColor.withOpacity(0.5),
        //           AppTheme.themeSurfaceColor.withOpacity(0.5),
        //         ],
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter,
        //       ),
        //     ),
        //     height: 100,
        //     child: Align(
        //       alignment: Alignment.bottomCenter,
        //       child: Footer(),
        //     ),
        //   ),
        // ),
        bottomNavigationBar: const Footer(),
      ),
    );
  }
}
