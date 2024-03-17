import 'widgets/schedule_item_widget.dart';
import 'models/schedule_item_model.dart';
import 'models/schedule_model.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:mohammod_shawon_ali_s_application1/core/app_export.dart';
import 'provider/schedule_provider.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key})
      : super(
          key: key,
        );

  @override
  SchedulePageState createState() => SchedulePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScheduleProvider(),
      child: SchedulePage(),
    );
  }
}

class SchedulePageState extends State<SchedulePage>
    with AutomaticKeepAliveClientMixin<SchedulePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildSchedule(context),
                      SizedBox(height: 24.v),
                      Selector<ScheduleProvider, TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.searchController,
                        builder: (context, searchController, child) {
                          return CustomTextFormField(
                            controller: searchController,
                            hintText: "msg_search_doctor_or".tr,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 16.v, 12.h, 16.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 56.v,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSchedule(BuildContext context) {
    return Consumer<ScheduleProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.v),
              child: SizedBox(
                width: 295.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray100,
                ),
              ),
            );
          },
          itemCount: provider.scheduleModelObj.scheduleItemList.length,
          itemBuilder: (context, index) {
            ScheduleItemModel model =
                provider.scheduleModelObj.scheduleItemList[index];
            return ScheduleItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
