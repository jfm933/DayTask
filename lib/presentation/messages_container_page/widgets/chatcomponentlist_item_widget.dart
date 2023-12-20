import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChatcomponentlistItemWidget extends StatelessWidget {
  const ChatcomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse36,
          height: 47.adaptSize,
          width: 47.adaptSize,
          radius: BorderRadius.circular(
            23.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Olivia Anna",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Hi, please check the last task, that I....",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    top: 10.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "31 min",
                        style: theme.textTheme.labelSmall,
                      ),
                      SizedBox(height: 4.v),
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
