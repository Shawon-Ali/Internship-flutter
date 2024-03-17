import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.close,
    this.covidCounter,
    this.id,
  }) {
    close = close ?? ImageConstant.imgClose;
    covidCounter = covidCounter ?? "Covid 19";
    id = id ?? "";
  }

  String? close;

  String? covidCounter;

  String? id;
}
