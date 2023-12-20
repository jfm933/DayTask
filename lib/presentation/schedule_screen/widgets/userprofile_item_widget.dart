import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray900,
      width: 370.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 72.v,
            width: 11.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 31.h,
                top: 12.v,
                bottom: 16.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Icons",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "16:00 - 18:30",
                        style: CustomTextStyles.bodySmallBluegray100,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    margin: EdgeInsets.only(
                      top: 13.v,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
