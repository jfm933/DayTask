import 'package:flutter/material.dart';
import 'package:james_s_application1/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgIconsaxBrokenHome2,
        activeIcon: ImageConstant.imgIconsaxBrokenHome2,
        title: "Home",
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxBrokenMessages1,
      activeIcon: ImageConstant.imgIconsaxBrokenMessages1,
      title: "Chat",
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAdd,
      activeIcon: ImageConstant.imgNavAdd,
      title: "Add",
      type: BottomBarEnum.Add,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxBrokenCalendar,
      activeIcon: ImageConstant.imgIconsaxBrokenCalendar,
      title: "Calendar",
      type: BottomBarEnum.Calendar,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxBrokenNotification1,
      activeIcon: ImageConstant.imgIconsaxBrokenNotification1,
      title: "Notification",
      type: BottomBarEnum.Notification,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: appTheme.blueGray900,
      child: SizedBox(
        height: 55.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            color: theme.colorScheme.primary,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.bodySmallPrimary.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            color: appTheme.blueGray500,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.blueGray500,
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Chat,
  Add,
  Calendar,
  Notification,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
