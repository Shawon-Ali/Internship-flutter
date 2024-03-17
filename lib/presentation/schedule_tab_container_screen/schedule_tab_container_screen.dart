import 'package:mohammod_shawon_ali_s_application1/presentation/home_page/home_page.dart';
import 'package:mohammod_shawon_ali_s_application1/presentation/schedule_page/schedule_page.dart';
import 'package:mohammod_shawon_ali_s_application1/widgets/custom_bottom_bar.dart';
import 'models/schedule_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammod_shawon_ali_s_application1/core/app_export.dart';
import 'provider/schedule_tab_container_provider.dart';

class ScheduleTabContainerScreen extends StatefulWidget {
  const ScheduleTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleTabContainerScreenState createState() =>
      ScheduleTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScheduleTabContainerProvider(),
      child: ScheduleTabContainerScreen(),
    );
  }
}

class ScheduleTabContainerScreenState extends State<ScheduleTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 618.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            SchedulePage.builder(context),
                            SchedulePage.builder(context),
                            SchedulePage.builder(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 50.v,
      width: 499.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.blueA200,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray300,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            25.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "msg_canceled_schedule".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_upcoming_schedule".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_completed_schedule".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Calendarbluegray300:
        return AppRoutes.homePage;
      case BottomBarEnum.Userbluegray300:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
