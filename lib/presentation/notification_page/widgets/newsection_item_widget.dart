import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NewsectionItemWidget extends StatelessWidget {
  const NewsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
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
              Container(
                width: 227.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Olivia Anna ",
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: "left a comment in task\n",
                        style: CustomTextStyles.bodyMediumBluegray300,
                      ),
                      TextSpan(
                        text: "Mobile App Design Project",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 53.h,
            top: 18.v,
            bottom: 18.v,
          ),
          child: Text(
            "31 min",
            style: theme.textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
