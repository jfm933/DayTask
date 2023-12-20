import 'package:flutter/material.dart';
import 'package:james_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:james_s_application1/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:james_s_application1/presentation/create_account_screen/create_account_screen.dart';
import 'package:james_s_application1/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:james_s_application1/presentation/task_details_screen/task_details_screen.dart';
import 'package:james_s_application1/presentation/chat_screen/chat_screen.dart';
import 'package:james_s_application1/presentation/message_groups_screen/message_groups_screen.dart';
import 'package:james_s_application1/presentation/new_message_screen/new_message_screen.dart';
import 'package:james_s_application1/presentation/schedule_screen/schedule_screen.dart';
import 'package:james_s_application1/presentation/create_new_task_screen/create_new_task_screen.dart';
import 'package:james_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:james_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String homeScreenContainer1Page = '/home_screen_container1_page';

  static const String taskDetailsScreen = '/task_details_screen';

  static const String messagesContainerPage = '/messages_container_page';

  static const String chatScreen = '/chat_screen';

  static const String messageGroupsScreen = '/message_groups_screen';

  static const String newMessageScreen = '/new_message_screen';

  static const String scheduleScreen = '/schedule_screen';

  static const String createNewTaskScreen = '/create_new_task_screen';

  static const String notificationPage = '/notification_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signInScreen: (context) => SignInScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    taskDetailsScreen: (context) => TaskDetailsScreen(),
    chatScreen: (context) => ChatScreen(),
    messageGroupsScreen: (context) => MessageGroupsScreen(),
    newMessageScreen: (context) => NewMessageScreen(),
    scheduleScreen: (context) => ScheduleScreen(),
    createNewTaskScreen: (context) => CreateNewTaskScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
