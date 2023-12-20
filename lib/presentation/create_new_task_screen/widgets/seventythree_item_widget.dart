import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';
import 'package:james_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SeventythreeItemWidget extends StatelessWidget {
  const SeventythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 176.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 41.adaptSize,
            width: 41.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUClockThree,
            ),
          ),
          CustomElevatedButton(
            height: 41.v,
            width: 135.h,
            text: "10:30 AM",
            buttonStyle: CustomButtonStyles.fillBlueGray1,
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
        ],
      ),
    );
  }
}
