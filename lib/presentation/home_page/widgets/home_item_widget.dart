import '../models/home_item_model.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mohammod_shawon_ali_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 72.adaptSize,
              width: 72.adaptSize,
              padding: EdgeInsets.all(24.h),
              child: CustomImageView(
                imagePath: homeItemModelObj?.close,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              homeItemModelObj.covidCounter!,
              style: CustomTextStyles.bodyMedium15,
            ),
          ],
        ),
      ),
    );
  }
}
