import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_icon_button.dart';

class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 39.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildArrowLeftRow(context),
                                    SizedBox(height: 38.v),
                                    Row(children: [
                                      CustomIconButton(
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          padding: EdgeInsets.all(11.h),
                                          decoration: IconButtonStyleHelper
                                              .fillPrimaryTL23,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIconsaxBrokenProfile2user)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("Create a group",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 29.v),
                                    _buildAmeliaRow(context),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle6,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("Alexander",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse41,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("Avery",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse36,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("Asher",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    _buildBerrettRow1(context),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse44,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("Benjamin",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse45,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("Brayden",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    _buildBerrettRow(context,
                                        berrett: "Berrett"),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse47,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 14.v,
                                              bottom: 15.v),
                                          child: Text("Braxton",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ]),
                                    SizedBox(height: 23.v),
                                    _buildCharlotteRow(context),
                                    SizedBox(height: 23.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse41,
                                          height: 47.adaptSize,
                                          width: 47.adaptSize,
                                          radius: BorderRadius.circular(23.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h,
                                              top: 15.v,
                                              bottom: 14.v),
                                          child: Text("Camelia",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ])
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 11.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text("New Message",
                          style: theme.textTheme.titleLarge)),
                  CustomImageView(
                      imagePath: ImageConstant.imgSearchOnprimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v))
                ])));
  }

  /// Section Widget
  Widget _buildAmeliaRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          width: 111.h,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse3612,
                    height: 47.adaptSize,
                    width: 47.adaptSize,
                    radius: BorderRadius.circular(23.h)),
                Padding(
                    padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                    child: Text("Amelia", style: theme.textTheme.titleSmall))
              ])),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Text("A", style: CustomTextStyles.titleMediumPrimarySemiBold))
    ]);
  }

  /// Section Widget
  Widget _buildBerrettRow1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildBerrettRow(context, berrett: "Berrett"),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Text("B", style: CustomTextStyles.titleMediumPrimarySemiBold))
    ]);
  }

  /// Section Widget
  Widget _buildCharlotteRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          width: 128.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse43,
                height: 47.adaptSize,
                width: 47.adaptSize,
                radius: BorderRadius.circular(23.h)),
            Padding(
                padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                child: Text("Charlotte", style: theme.textTheme.titleSmall))
          ])),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Text("C", style: CustomTextStyles.titleMediumPrimarySemiBold))
    ]);
  }

  /// Common widget
  Widget _buildBerrettRow(
    BuildContext context, {
    required String berrett,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse46,
          height: 47.adaptSize,
          width: 47.adaptSize,
          radius: BorderRadius.circular(23.h)),
      Padding(
          padding: EdgeInsets.only(left: 17.h, top: 14.v, bottom: 15.v),
          child: Text(berrett,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
