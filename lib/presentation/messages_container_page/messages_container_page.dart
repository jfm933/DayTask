import '../messages_container_page/widgets/chatcomponentlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';

class MessagesContainerPage extends StatelessWidget {
  const MessagesContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.h, vertical: 39.v),
                    child: Column(children: [
                      _buildArrowLeftRow(context),
                      SizedBox(height: 35.v),
                      _buildChatRow(context),
                      SizedBox(height: 32.v),
                      _buildChatComponentList(context),
                      SizedBox(height: 48.v),
                      CustomElevatedButton(
                          height: 57.v,
                          width: 175.h,
                          text: "Start chat",
                          margin: EdgeInsets.only(right: 1.h),
                          buttonTextStyle:
                              CustomTextStyles.titleMediumBlack90016,
                          onPressed: () {
                            onTapStartChat(context);
                          },
                          alignment: Alignment.centerRight),
                      SizedBox(height: 67.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              child: Text("Messages", style: theme.textTheme.titleLarge)),
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxBrokenEdit,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildChatRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "Chat",
                  margin: EdgeInsets.only(right: 10.h),
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimary)),
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "Groups",
                  margin: EdgeInsets.only(left: 10.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleSmallMedium,
                  onPressed: () {
                    onTapGroups(context);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildChatComponentList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 33.v);
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return ChatcomponentlistItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the messageGroupsScreen when the action is triggered.
  onTapGroups(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageGroupsScreen);
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapStartChat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}
