import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';
import 'package:james_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 26.h, vertical: 32.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup51,
                              height: 130.v,
                              width: 140.h,
                              alignment: Alignment.center),
                          SizedBox(height: 40.v),
                          Text("Welcome Back!",
                              style: theme.textTheme.headlineMedium),
                          SizedBox(height: 13.v),
                          Text("Email Address",
                              style: CustomTextStyles.bodyLargeBluegray300),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "fazzzil72@gmail.com",
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      18.h, 17.v, 26.h, 17.v),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconsaxBrokenUsertag,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 58.v),
                              contentPadding: EdgeInsets.only(
                                  top: 18.v, right: 30.h, bottom: 18.v)),
                          SizedBox(height: 25.v),
                          Text("Password",
                              style: CustomTextStyles.bodyLargeBluegray300),
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
                          SizedBox(height: 11.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text("Forgot Password?",
                                  style: CustomTextStyles
                                      .titleMediumBluegray30016)),
                          SizedBox(height: 36.v),
                          CustomElevatedButton(
                              text: "Log In",
                              onPressed: () {
                                onTapLogIn(context);
                              }),
                          SizedBox(height: 47.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account? ",
                                            style: CustomTextStyles
                                                .titleMediumBluegray300),
                                        TextSpan(
                                            text: "Sign Up",
                                            style: CustomTextStyles
                                                .titleMediumPrimary)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the createAccountScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountScreen);
  }
}
