import '../notification_page/widgets/newsection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:james_s_application1/core/app_export.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:james_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:james_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  List newsectionItemList = [
    {'id': 1, 'groupBy': "New"},
    {'id': 2, 'groupBy': "New"},
    {'id': 3, 'groupBy': "New"},
    {'id': 4, 'groupBy': "New"},
    {'id': 5, 'groupBy': "Earlier"},
    {'id': 6, 'groupBy': "Earlier"},
    {'id': 7, 'groupBy': "Earlier"}
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 41.h, top: 18.v, right: 13.h),
                child: GroupedListView<dynamic, String>(
                    shrinkWrap: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: newsectionItemList,
                    groupBy: (element) => element['groupBy'],
                    sort: false,
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                          padding: EdgeInsets.only(top: 37.v, bottom: 17.v),
                          child: Text(value,
                              style: theme.textTheme.titleLarge!.copyWith(
                                  color:
                                      theme.colorScheme.onPrimaryContainer)));
                    },
                    itemBuilder: (context, model) {
                      return NewsectionItemWidget();
                    },
                    separator: SizedBox(height: 23.v)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Notifications"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
