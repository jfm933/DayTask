import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';
import 'package:james_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 37.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup51,
                              height: 96.v,
                              width: 139.h,
                              alignment: Alignment.center),
                          SizedBox(height: 40.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Create your account",
                                  style: theme.textTheme.headlineMedium)),
                          SizedBox(height: 11.v),
                          _buildFullNameSection(context),
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Email Address",
                                  style:
                                      CustomTextStyles.bodyLargeBluegray300)),
                          SizedBox(height: 14.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: CustomTextFormField(
                                  controller: emailController,
                                  hintText: "fazzzil72@gmail.com",
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          18.h, 17.v, 26.h, 17.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxBrokenUsertag,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 58.v),
                                  contentPadding: EdgeInsets.only(
                                      top: 18.v, right: 30.h, bottom: 18.v))),
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Password",
                                  style:
                                      CustomTextStyles.bodyLargeBluegray300)),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "************",
                              hintStyle: theme.textTheme.headlineSmall!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      18.h, 17.v, 26.h, 17.v),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconsaxBrokenLock1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 58.v),
                              suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 17.v, 18.h, 17.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgIconsaxBrokenEyeslash,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 58.v),
                              obscureText: true),
                          SizedBox(height: 17.v),
                          _buildDescriptionSection(context),
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                              text: "Sign Up",
                              margin: EdgeInsets.only(left: 1.h),
                              onPressed: () {
                                onTapSignUp(context);
                              }),
                          SizedBox(height: 62.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Already have an account? ",
                                            style: CustomTextStyles
                                                .titleMediumBluegray300),
                                        TextSpan(
                                            text: "Log In",
                                            style: CustomTextStyles
                                                .titleMediumPrimary)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildFullNameSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child:
              Text("Full Name", style: CustomTextStyles.bodyLargeBluegray300)),
      SizedBox(height: 14.v),
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: CustomTextFormField(
              controller: fullNameController,
              hintText: "Fazil Laghari",
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(18.h, 17.v, 26.h, 17.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxBrokenUser,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 58.v),
              contentPadding:
                  EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v)))
    ]);
  }

  /// Section Widget
  Widget _buildDescriptionSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 30.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxBrokenTicksquare,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 16.v)),
          Expanded(
              child: Container(
                  width: 312.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I have read & agreed to DayTask ",
                            style: CustomTextStyles.bodyMediumBluegray300),
                        TextSpan(
                            text: "Privacy Policy,\nTerms & Condition",
                            style: CustomTextStyles.bodyMediumPrimary
                                .copyWith(height: 1.35))
                      ]),
                      textAlign: TextAlign.left)))
        ]));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
