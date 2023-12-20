import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MobileappwireframesectionItemWidget extends StatelessWidget {
  const MobileappwireframesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Mobile App Wireframe",
              style: CustomTextStyles.titleLargePilatExtended,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Team members",
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        height: 20.v,
                        width: 46.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse4,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
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
                      SizedBox(height: 12.v),
                      Text(
                        "Due on : 21 March",
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 59.adaptSize,
                          width: 59.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              29.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.primaryContainer,
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "75%",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
