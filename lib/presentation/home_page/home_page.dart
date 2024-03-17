import 'package:mohammod_shawon_ali_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/custom_search_view.dart';
import 'widgets/home_item_widget.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammod_shawon_ali_s_application1/core/app_export.dart';
import 'provider/home_provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 32.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrameEleven(context),
                  SizedBox(height: 20.v),
                  Selector<HomeProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.searchController,
                    builder: (context, searchController, child) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_doctor_or".tr,
                      );
                    },
                  ),
                  SizedBox(height: 24.v),
                  _buildHome(context),
                  SizedBox(height: 27.v),
                  Text(
                    "lbl_near_doctor".tr,
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                  SizedBox(height: 12.v),
                  _buildFrameTwelve(context),
                  SizedBox(height: 12.v),
                  _buildFrameThirteen(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_hello".tr,
              margin: EdgeInsets.only(right: 52.h),
            ),
            AppbarTitle(
              text: "lbl_hi_james".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFrame,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameEleven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
                padding: EdgeInsets.only(left: 12.h),
                child: _buildFrameTwentyEight(
                  context,
                  drImranSyahir: "msg_dr_imran_syahir".tr,
                  generalDoctor: "lbl_general_doctor".tr,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 12.v),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Divider(
            color: theme.colorScheme.primaryContainer,
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 25.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_sunday_12_june".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 112.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "msg_11_00_12_00_am".tr,
                          style: CustomTextStyles.bodySmallPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SizedBox(
      height: 104.v,
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 13.h,
              );
            },
            itemCount: provider.homeModelObj.homeItemList.length,
            itemBuilder: (context, index) {
              HomeItemModel model = provider.homeModelObj.homeItemList[index];
              return HomeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwelve(BuildContext context) {
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
          Row(
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
                      "msg_dr_joseph_brostito".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_dental_specialist".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Container(
                width: 64.h,
                margin: EdgeInsets.only(
                  left: 18.h,
                  top: 14.v,
                  bottom: 14.v,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_1_2_km".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 35.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClockOrange300,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_4_8_120_reviews".tr,
                    style: CustomTextStyles.bodySmallOrange300,
                  ),
                ),
                Container(
                  width: 106.h,
                  margin: EdgeInsets.only(left: 26.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClockBlueA200,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "lbl_open_at_17_00".tr,
                          style: CustomTextStyles.bodySmallBlueA200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                child: _buildFrameTwentyEight(
                  context,
                  drImranSyahir: "msg_dr_imran_syahir".tr,
                  generalDoctor: "lbl_general_doctor".tr,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  top: 17.v,
                  bottom: 16.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 14.v,
                  bottom: 14.v,
                ),
                child: Text(
                  "lbl_1_2_km".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClockBlueA200,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_open_at_17_00".tr,
                    style: CustomTextStyles.bodySmallBlueA200,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClockOrange300,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_4_8_120_reviews".tr,
                    style: CustomTextStyles.bodySmallOrange300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwentyEight(
    BuildContext context, {
    required String drImranSyahir,
    required String generalDoctor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          drImranSyahir,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          generalDoctor,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ],
    );
  }
}
