import '../message_groups_screen/widgets/time_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/presentation/home_screen_container1_page/home_screen_container1_page.dart';
import 'package:james_s_application1/presentation/messages_container_page/messages_container_page.dart';
import 'package:james_s_application1/presentation/notification_page/notification_page.dart';
import 'package:james_s_application1/presentation/schedule_screen/schedule_screen.dart';
import 'package:james_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:james_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MessageGroupsScreen extends StatelessWidget {
  MessageGroupsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v),
                child: Column(children: [
                  _buildArrowLeftRow(context),
                  SizedBox(height: 35.v),
                  _buildChatRow(context),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 33.v);
                          },
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return TimeItemWidget();
                          })),
                  SizedBox(height: 12.v)
                ])),
            bottomNavigationBar: _buildBottomAppBarColumn(context),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
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
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "Chat",
                  margin: EdgeInsets.only(right: 10.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleSmallMedium)),
          Expanded(
              child: CustomElevatedButton(
                  height: 47.v,
                  text: "Groups",
                  margin: EdgeInsets.only(left: 10.h),
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildBottomAppBarColumn(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenContainer1Page;
      case BottomBarEnum.Chat:
        return AppRoutes.messagesContainerPage;
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Calendar:
        return AppRoutes.scheduleScreen;
      case BottomBarEnum.Notification:
        return AppRoutes.notificationPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainer1Page:
        return HomeScreenContainer1Page();
      case AppRoutes.messagesContainerPage:
        return MessagesContainerPage();
      case AppRoutes.scheduleScreen:
        return ScheduleScreen();
      case AppRoutes.notificationPage:
        return NotificationPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
