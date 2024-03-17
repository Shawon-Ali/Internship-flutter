import '../../../core/app_export.dart';
import 'schedule_item_model.dart';

class ScheduleModel {
  List<ScheduleItemModel> scheduleItemList = [
    ScheduleItemModel(
        drJosephBrostito: "Dr. Joseph Brostito",
        dentalSpecialist: "Dental Specialist",
        duration: "Sunday, 12 June",
        time: "11:00 - 12:00 AM"),
    ScheduleItemModel(
        drJosephBrostito: "Dr. Bessie Coleman",
        dentalSpecialist: "Dental Specialist",
        duration: "Sunday, 12 June",
        time: "11:00 - 12:00 AM"),
    ScheduleItemModel(
        drJosephBrostito: "Dr. Babe Didrikson",
        dentalSpecialist: "Dental Specialist")
  ];
}
