import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/presentation/create_new_task_screen/create_new_task_screen.dart';
import 'package:james_s_application1/presentation/home_screen_container1_page/home_screen_container1_page.dart';
import 'package:james_s_application1/presentation/messages_container_page/messages_container_page.dart';
import 'package:james_s_application1/presentation/notification_page/notification_page.dart';
import 'package:james_s_application1/presentation/schedule_screen/schedule_screen.dart';
import 'package:james_s_application1/widgets/custom_bottom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {
  HomeScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScreenContainer1Page,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
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
        return "/create_new_task_screen";
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
      case "/create_new_task_screen":
        return CreateNewTaskScreen();
      default:
        return DefaultWidget();
    }
  }
}
