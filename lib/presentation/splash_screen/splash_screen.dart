import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 23.v),
                child: Column(children: [
                  _buildFiveSection(context),
                  SizedBox(height: 42.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup271,
                      height: 330.v,
                      width: 369.h),
                  SizedBox(height: 32.v),
                  SizedBox(
                      width: 376.h,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Manage \nyour\nTask with\n",
                                style: theme.textTheme.displayLarge),
                            TextSpan(
                                text: "DayTask",
                                style: CustomTextStyles.displayLargePrimary)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildLetsStartButtonSection(context)));
  }

  /// Section Widget
  Widget _buildFiveSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      CustomImageView(
        imagePath: ImageConstant.imgClock,
        height: 47.v,
        width: 61.h,
      ),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Day", style: CustomTextStyles.titleMediumPilatExtended),
            TextSpan(
                text: "Task",
                style: CustomTextStyles.titleMediumPilatExtendedPrimary)
          ]),
          textAlign: TextAlign.center)
    ]);
  }

  /// Section Widget
  Widget _buildLetsStartButtonSection(BuildContext context) {
    return CustomElevatedButton(
        text: "Let’s Start",
        margin: EdgeInsets.only(left: 26.h, right: 26.h, bottom: 50.v),
        onPressed: () {
          onTapLetsStartButtonSection(context);
        });
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLetsStartButtonSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
