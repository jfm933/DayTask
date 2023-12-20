import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  const TimeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.4,
        dragDismissible: false,
        children: [
          Container(
            margin: EdgeInsets.only(left: 45.h),
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: Text(
              "15:35",
              style: theme.textTheme.labelSmall,
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 47.v,
            width: 303.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Text(
                      "Robert: Did you check the last task?",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse362,
                        height: 47.adaptSize,
                        width: 47.adaptSize,
                        radius: BorderRadius.circular(
                          23.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.h,
                          top: 6.v,
                          bottom: 23.v,
                        ),
                        child: Text(
                          "Android Developer",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 45.h,
              top: 19.v,
              bottom: 17.v,
            ),
            child: Text(
              "15:35",
              style: theme.textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
