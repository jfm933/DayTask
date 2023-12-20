import '../create_new_task_screen/widgets/seventythree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';
import 'package:james_s_application1/widgets/custom_icon_button.dart';
import 'package:james_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateNewTaskScreen extends StatelessWidget {
  CreateNewTaskScreen({Key? key}) : super(key: key);

  TextEditingController taskTitleController = TextEditingController();

  TextEditingController taskDetailsController = TextEditingController();

  TextEditingController closeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 39.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 70.h),
                                child: Text("Create New Task",
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 41.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Task Title",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 11.v),
                      _buildTaskTitle(context),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Task Details",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 16.v),
                      _buildTaskDetails(context),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Add team members",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 22.v),
                      _buildRobert(context),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Time & Date",
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 34.v),
                      _buildSeventyThree(context),
                      SizedBox(height: 45.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Add New",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 42.v),
                      _buildCreate(context),
                      SizedBox(height: 22.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTaskTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 7.h),
        child: CustomTextFormField(
            controller: taskTitleController,
            hintText: "Hi-Fi Wireframe",
            alignment: Alignment.center,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)));
  }

  /// Section Widget
  Widget _buildTaskDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 7.h),
        child: CustomTextFormField(
            controller: taskDetailsController,
            hintText: "Text Area",
            alignment: Alignment.center,
            maxLines: 4,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 11.h, vertical: 16.v)));
  }

  /// Section Widget
  Widget _buildAddTeamMembers(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        width: 148.h,
        text: "Robert",
        margin: EdgeInsets.only(bottom: 1.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 24.h),
            child: CustomImageView(
                imagePath:
                    ImageConstant.imgIconsaxLinearAddsquareOnprimarycontainer,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 24.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgEllipse3,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.fillBlueGray1,
        buttonTextStyle: CustomTextStyles.titleSmallMedium);
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, bottom: 1.v),
        child: CustomTextFormField(
            width: 148.h,
            controller: closeController,
            hintText: "Sophia",
            hintStyle: CustomTextStyles.titleSmallMedium,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(9.h, 10.v, 24.h, 10.v),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.h)),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 40.v),
            suffix: Container(
                margin: EdgeInsets.fromLTRB(24.h, 11.v, 9.h, 11.v),
                child: CustomImageView(
                    imagePath: ImageConstant
                        .imgIconsaxLinearAddsquareOnprimarycontainer,
                    height: 16.adaptSize,
                    width: 16.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 40.v),
            contentPadding: EdgeInsets.symmetric(vertical: 11.v)));
  }

  /// Section Widget
  Widget _buildRobert(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Row(children: [
          _buildAddTeamMembers(context),
          _buildClose(context),
          Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: CustomIconButton(
                  height: 41.adaptSize,
                  width: 41.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillOnPrimary,
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return SizedBox(
        height: 41.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 8.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 27.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return SeventythreeItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildCreate(BuildContext context) {
    return CustomElevatedButton(
        text: "Create",
        margin: EdgeInsets.symmetric(horizontal: 13.h),
        alignment: Alignment.center);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
