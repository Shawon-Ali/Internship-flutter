import '../models/schedule_item_model.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:mohammod_shawon_ali_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(
    this.scheduleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ScheduleItemModel scheduleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 82.h),
            child: Row(
              children: [
                Container(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder24,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        scheduleItemModelObj.drJosephBrostito!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        scheduleItemModelObj.dentalSpecialist!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarBlueGray300,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    scheduleItemModelObj.duration!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 112.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClockBlueGray300,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          scheduleItemModelObj.time!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            text: "lbl_detail".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL19,
          ),
        ],
      ),
    );
  }
}
