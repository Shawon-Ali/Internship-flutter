import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/schedule_tab_container_model.dart';

/// A provider class for the ScheduleTabContainerScreen.
///
/// This provider manages the state of the ScheduleTabContainerScreen, including the
/// current scheduleTabContainerModelObj
class ScheduleTabContainerProvider extends ChangeNotifier {
  ScheduleTabContainerModel scheduleTabContainerModelObj =
      ScheduleTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
