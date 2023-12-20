import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FinancemobileappItemWidget extends StatelessWidget {
  const FinancemobileappItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillBlueGray,
      width: 183.h,
      child: Column(
        children: [
          SizedBox(
            width: 157.h,
            child: Text(
              "Finance\nMobile App\nDesign",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargePilatExtended.copyWith(
                height: 1.21,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Team members",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ),
              Container(
                height: 20.v,
                width: 72.h,
                margin: EdgeInsets.only(left: 11.h),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse4,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 13.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse5,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Completed",
                style: CustomTextStyles.bodySmallOnPrimaryContainer,
              ),
              Padding(
                padding: EdgeInsets.only(left: 83.h),
                child: Text(
                  "100%",
                  style: CustomTextStyles.labelSmall9,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Container(
            height: 6.v,
            width: 163.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                3.h,
              ),
              child: LinearProgressIndicator(
                value: 1.0,
                backgroundColor: theme.colorScheme.onPrimaryContainer,
                valueColor: AlwaysStoppedAnimation<Color>(
                  appTheme.amber100,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
