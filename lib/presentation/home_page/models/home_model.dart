import '../../../core/app_export.dart';
import 'home_item_model.dart';

class HomeModel {
  List<HomeItemModel> homeItemList = [
    HomeItemModel(close: ImageConstant.imgClose, covidCounter: "Covid 19"),
    HomeItemModel(
        close: ImageConstant.imgCloseBlueA200, covidCounter: "Doctor"),
    HomeItemModel(
        close: ImageConstant.imgCloseBlueA20072x72, covidCounter: "Medicine"),
    HomeItemModel(close: ImageConstant.imgFacebook, covidCounter: "Hospital")
  ];
}
