import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TwentyoneItemWidget extends StatelessWidget {
  const TwentyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillBlueGray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 8.v,
                bottom: 9.v,
              ),
              child: Text(
                "User Interviews",
                style: theme.textTheme.titleMedium,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
          ],
        ),
      ),
    );
  }
}
