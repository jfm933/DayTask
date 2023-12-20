import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_drop_down.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';
import 'package:james_s_application1/widgets/custom_icon_button.dart';
import 'package:james_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 37.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(top: 1.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 120.h),
                                    child: Text("Profile",
                                        style: theme.textTheme.titleLarge))
                              ]))),
                      SizedBox(height: 50.v),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: theme.colorScheme.primary, width: 2.h),
                              borderRadius: BorderRadiusStyle.roundedBorder66),
                          child: Container(
                              height: 133.adaptSize,
                              width: 133.adaptSize,
                              padding: EdgeInsets.all(3.h),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder66),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse36127x127,
                                        height: 127.adaptSize,
                                        width: 127.adaptSize,
                                        radius: BorderRadius.circular(63.h),
                                        alignment: Alignment.center),
                                    Padding(
                                        padding: EdgeInsets.only(right: 1.h),
                                        child: CustomIconButton(
                                            height: 33.adaptSize,
                                            width: 33.adaptSize,
                                            padding: EdgeInsets.all(6.h),
                                            decoration: IconButtonStyleHelper
                                                .fillOnPrimary,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIconsaxLinearClosesquare)))
                                  ]))),
                      SizedBox(height: 52.v),
                      _buildName(context),
                      SizedBox(height: 26.v),
                      _buildEmail(context),
                      SizedBox(height: 26.v),
                      _buildPassword(context),
                      SizedBox(height: 26.v),
                      CustomDropDown(
                          hintText: "My Tasks",
                          items: dropdownItemList,
                          prefix: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 15.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconsaxLinearTask,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 54.v),
                          onChanged: (value) {}),
                      SizedBox(height: 26.v),
                      CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconsaxLinearArrowdown2,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          hintText: "Privacy",
                          items: dropdownItemList1,
                          prefix: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 15.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgIconsaxLinearSecuritycard,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 54.v),
                          contentPadding: EdgeInsets.symmetric(vertical: 16.v),
                          onChanged: (value) {}),
                      SizedBox(height: 26.v),
                      CustomDropDown(
                          hintText: "Setting",
                          items: dropdownItemList2,
                          prefix: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 15.v),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconsaxLinearSetting2,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 54.v),
                          onChanged: (value) {}),
                      SizedBox(height: 46.v),
                      _buildLogout(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Fazil Laghari",
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearUseradd,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 54.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 54.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "fazzzil72@gmail.com",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 54.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 54.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 54.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 54.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildLogout(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        text: "Logout",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearLogoutcurve,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapLogout(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
