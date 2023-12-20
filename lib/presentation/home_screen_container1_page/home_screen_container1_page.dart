import '../home_screen_container1_page/widgets/financemobileapp_item_widget.dart';
import '../home_screen_container1_page/widgets/mobileappwireframesection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_icon_button.dart';
import 'package:james_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainer1Page extends StatelessWidget {
  HomeScreenContainer1Page({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 22.h, right: 22.h, bottom: 12.v),
                              child: Column(children: [
                                _buildWelcomeBackSection(context),
                                SizedBox(height: 30.v),
                                _buildSearchSection(context),
                                SizedBox(height: 37.v),
                                _buildCompletedTasksSection(context),
                                SizedBox(height: 37.v),
                                _buildOngoingProjectsSection(context,
                                    dynamicText: "Ongoing Projects",
                                    dynamicText1: "See all"),
                                SizedBox(height: 15.v),
                                _buildMobileAppWireframeSection(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildWelcomeBackSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back!",
                        style: CustomTextStyles.labelMediumPrimary),
                    SizedBox(height: 4.v),
                    Text("Fazil Laghari",
                        style: CustomTextStyles.titleLargePilatExtendedSemiBold)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle6,
              height: 48.v,
              width: 47.h,
              radius: BorderRadius.circular(23.h),
              margin: EdgeInsets.only(bottom: 2.v),
              onTap: () {
                onTapImgImage(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
          flex: 1,
          child: CustomSearchView(
              controller: searchController, hintText: "Seach tasks")),
      Padding(
          padding: EdgeInsets.only(left: 0.h),
          child: CustomIconButton(
              height: 70.v,
              width: 5.h,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillOnPrimary,
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconsaxLinearSetting4)))
    ]);
  }

  /// Section Widget
  Widget _buildCompletedTasksSection(BuildContext context) {
    return Column(children: [
      _buildOngoingProjectsSection(context,
          dynamicText: "Completed Tasks", dynamicText1: "See all"),
      SizedBox(height: 12.v),
      SizedBox(
          height: 175.v,
          child: ListView.separated(
              padding: EdgeInsets.only(right: 8.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 10.h);
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return FinancemobileappItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildMobileAppWireframeSection(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 15.v);
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return MobileappwireframesectionItemWidget();
        });
  }

  /// Common widget
  Widget _buildOngoingProjectsSection(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(dynamicText,
          style: CustomTextStyles.titleLargeSemiBold
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(dynamicText1,
              style: CustomTextStyles.bodyLargePrimary
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
