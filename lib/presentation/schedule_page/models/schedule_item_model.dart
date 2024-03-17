import '../../../core/app_export.dart';

/// This class is used in the [schedule_item_widget] screen.
class ScheduleItemModel {
  ScheduleItemModel({
    this.drJosephBrostito,
    this.dentalSpecialist,
    this.duration,
    this.time,
    this.id,
  }) {
    drJosephBrostito = drJosephBrostito ?? "Dr. Joseph Brostito";
    dentalSpecialist = dentalSpecialist ?? "Dental Specialist";
    duration = duration ?? "Sunday, 12 June";
    time = time ?? "11:00 - 12:00 AM";
    id = id ?? "";
  }

  String? drJosephBrostito;

  String? dentalSpecialist;

  String? duration;

  String? time;

  String? id;
}
