import 'package:intl/intl.dart';

import '../schedule_screen/widgets/framenine_item_widget.dart';
import '../schedule_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/presentation/home_screen_container1_page/home_screen_container1_page.dart';
import 'package:james_s_application1/presentation/messages_container_page/messages_container_page.dart';
import 'package:james_s_application1/presentation/notification_page/notification_page.dart';
import 'package:james_s_application1/presentation/schedule_screen/schedule_screen.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:james_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:james_s_application1/widgets/custom_bottom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ScheduleScreen extends StatelessWidget {
  ScheduleScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 27.v),
                  Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                          child: Padding(
                              padding:
                                  EdgeInsets.only(left: 29.h, bottom: 20.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        DateFormat('MMMM')
                                            .format(DateTime.now()),
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                SizedBox(height: 25.v),
                                _buildThu(context),
                                SizedBox(height: 37.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Today’s Tasks",
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                SizedBox(height: 23.v),
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child:
                                        Column(children: _buildList(context))),
                              ]))))
                ])),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Schedule"),
        actions: [
          AppbarTrailingIconbutton(
              onTap: () {
                print("Halo");
              },
              imagePath: ImageConstant.imgUPlus,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildThu(BuildContext context) {
    int daysInMonth =
        DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;
    return SizedBox(
        height: 69.v,
        width: 399.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 69.v,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 14.h);
                      },
                      itemCount: daysInMonth,
                      itemBuilder: (context, index) {
                        return FramenineItemWidget(
                          dayNumber: index + 1,
                        );
                      })))
        ]));
  }

  List<Widget> _buildList(BuildContext context) {
    int dataLength = 4;
    return List.generate(dataLength, (index) {
      List<String> iconsText = ["WireFrame", "Icon", "Project", "Swiming"];
      List<String> timeTexts = [
        "16:00 - 18:30",
        "18:30 - 20:00",
        "20:00 - 21:30",
        "21:30 - 23:00"
      ]; // Contoh data
      return Padding(
        padding: EdgeInsets.only(bottom: 20.h), // Jarak antar item
        child: Container(
            margin: EdgeInsets.only(right: 9.h),
            decoration: AppDecoration.fillBluegray900,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      height: 72.v,
                      width: 11.h,
                      decoration:
                          BoxDecoration(color: theme.colorScheme.primary)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 31.h, top: 12.v, bottom: 16.v),
                      child: _buildIcons(context,
                          iconsText: iconsText[index],
                          timeText: timeTexts[index]))
                ])),
      );
    });
  }

  /// Section Widget

  /// Common widget
  Widget _buildIcons(
    BuildContext context, {
    required String iconsText,
    required String timeText,
  }) {
    return Expanded(
        flex: 1,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(iconsText,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.onPrimaryContainer)),
            SizedBox(height: 5.v),
            Text(timeText,
                style: CustomTextStyles.bodySmallBluegray100
                    .copyWith(color: appTheme.blueGray100))
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 20.adaptSize,
              width: 20.adaptSize,
              radius: BorderRadius.circular(10.h),
              margin: EdgeInsets.only(top: 13.v, bottom: 9.v, left: 300.v))
        ]));
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
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
