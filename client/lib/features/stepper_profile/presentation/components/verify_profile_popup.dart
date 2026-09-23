import 'package:client/config/injector/injectable.dart';
import 'package:client/config/routes/app_route_conf.dart';
import 'package:client/config/routes/app_route_path.dart';
import 'package:client/core/components/custom_button.dart';
import 'package:client/core/components/custom_modal_sheet.dart';
import 'package:client/core/utils/app_images.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/core/utils/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

mixin class VerifyProfilePopUp {
  // Add this static variable to track if popup is already open
  static bool _isPopupOpen = false;

  static Future<dynamic>? showPopup() {
    // Check if popup is already open - if yes, return null
    if (_isPopupOpen) {
      return null;
    }

    // if (model != null && (model.name == null || model.subCategoryId == null)) {
    // Set flag to true before showing popup
    _isPopupOpen = true;

    return showModalBottomSheet(
          context: AppRouteConf.rootNavigatorKey.currentContext!,
          isScrollControlled: true,
          builder: (context) => CustomModalSheetWidget(
            showClose: false,
            size: 0.5,
            maxSize: 0.5,
            bottomChild: Padding(
              padding: .symmetric(
                horizontal: Dimens.horizontalspacing,
                vertical: Dimens.verticalspacing,
              ),
              child: CustomButton(
                text: "Update Profile",
                onPressed: () {
                  serviceLocator<GoRouter>().push(AppRoute.profileStepper.path);
                },
              ),
            ),
            child: Column(
              children: [
                SizeBox.sizeHX2,
                Hero(
                  tag: 'Hero Text',
                  child: Text(
                    "Complete Your Profile",
                    style: TextStyle(
                      fontSize: 22.spMax,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizeBox.sizeHX1,

                SizedBox(
                  height: Dimens.screenHeight * 0.25,
                  child: Lottie.asset(AppImages.profileLottie),
                ),
              ],
            ),
          ),
        )
        .then((value) {
          // Reset flag when popup is closed
          _isPopupOpen = false;
          return value;
        })
        .catchError((error) {
          // Reset flag on error too
          _isPopupOpen = false;
        });
    // } else {
    //   return null;
    // }
  }
}
