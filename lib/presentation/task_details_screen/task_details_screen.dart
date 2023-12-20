import '../task_details_screen/widgets/twentyone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:james_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';
import 'package:james_s_application1/widgets/custom_icon_button.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 46.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("Real Estate App Design",
                                  style: CustomTextStyles
                                      .titleLargePilatExtended)),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.only(left: 29.h, right: 59.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 128.h,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomIconButton(
                                                  height: 47.adaptSize,
                                                  width: 47.adaptSize,
                                                  padding: EdgeInsets.all(11.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillOnPrimary,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconsaxBrokenCalendarremove)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 7.v, bottom: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Due Date",
                                                            style: CustomTextStyles
                                                                .labelMediumBluegray300),
                                                        SizedBox(height: 2.v),
                                                        Text("20 June",
                                                            style: CustomTextStyles
                                                                .titleMediumSemiBold)
                                                      ]))
                                            ])),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 47.adaptSize,
                                              width: 47.adaptSize,
                                              padding: EdgeInsets.all(11.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillOnPrimary,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconsaxBrokenProfile2user)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h, top: 5.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Project Team",
                                                        style: CustomTextStyles
                                                            .labelMediumBluegray300),
                                                    SizedBox(height: 5.v),
                                                    SizedBox(
                                                        height: 20.v,
                                                        width: 46.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse3,
                                                                  height: 20
                                                                      .adaptSize,
                                                                  width: 20
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse4,
                                                                  height: 20
                                                                      .adaptSize,
                                                                  width: 20
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse5,
                                                                  height: 20
                                                                      .adaptSize,
                                                                  width: 20
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight)
                                                            ]))
                                                  ]))
                                        ])
                                  ])),
                          SizedBox(height: 31.v),
                          Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("Project Details",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 9.v),
                          Container(
                              width: 350.h,
                              margin: EdgeInsets.only(left: 29.h, right: 48.h),
                              child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallTeal100
                                      .copyWith(height: 1.54))),
                          SizedBox(height: 16.v),
                          _buildProjectProgress(context),
                          SizedBox(height: 14.v),
                          _buildFilter1(context),
                          SizedBox(height: 18.v),
                          _buildTwentyOne(context),
                          SizedBox(height: 14.v),
                          _buildTwentySix(context)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Task Details"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconsaxBrokenEdit,
              margin: EdgeInsets.fromLTRB(40.h, 15.v, 40.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildProjectProgress(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 19.v, bottom: 17.v),
                      child: Text("Project Progress",
                          style: theme.textTheme.titleMedium)),
                  SizedBox(
                      height: 59.adaptSize,
                      width: 59.adaptSize,
                      child: CircularProgressIndicator(
                          value: 0.5, strokeWidth: 2.h))
                ])));
  }

  /// Section Widget
  Widget _buildFilter(BuildContext context) {
    return CustomElevatedButton(
        height: 31.v,
        width: 66.h,
        text: "Filter",
        buttonTextStyle: CustomTextStyles.titleMediumBlack900SemiBold);
  }

  /// Section Widget
  Widget _buildFilter1(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Text("All Tasks",
                          style: theme.textTheme.titleMedium)),
                  _buildFilter(context)
                ])));
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.v);
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TwentyoneItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildAddTask(BuildContext context) {
    return CustomElevatedButton(height: 57.v, text: "Add Task");
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 55.h, vertical: 26.v),
        decoration: AppDecoration.fillBluegray900,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 5.v), _buildAddTask(context)]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
