import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:james_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FramenineItemWidget extends StatelessWidget {
  final int dayNumber;
  const FramenineItemWidget({Key? key, required this.dayNumber})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    // Mendapatkan tanggal berdasarkan dayNumber
    DateTime date =
        DateTime(DateTime.now().year, DateTime.now().month, dayNumber);
    // Mendapatkan nama hari dalam seminggu
    String dayName = DateFormat('EEE').format(date);
    bool isToday = dayNumber == DateTime.now().day;

    return SizedBox(
      width: 50.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          decoration: BoxDecoration(
            color: isToday
                ? Color(0xFFFED36A)
                : appTheme
                    .blueGray900, // Mengubah warna berdasarkan apakah dayNumber sama dengan hari saat ini
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  dayNumber.toString(),
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                dayName,
                style: CustomTextStyles.labelSmallMedium,
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }
}
