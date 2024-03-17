import 'package:flutter/material.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerScreen =
      '/schedule_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeContainerScreen: HomeContainerScreen.builder,
        scheduleTabContainerScreen: ScheduleTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeContainerScreen.builder
      };
}
