import 'package:flutter/cupertino.dart';

class Mobile {
  String name;
  String mDate;
  String platform;

  Mobile(this.name, this.mDate, this.platform);
}

List<Mobile> mobiles = [
  Mobile("Samsung", "2011", "Android"),
  Mobile("Huawei", "2016", "Android"),
  Mobile("Apple", "2017", "IOS"),
];

void printName() {
  debugPrint(mobiles[0].name);
}

List<String> mobileNames = [
  //Mobile Name List
];

List<String> mDateList = [
  //Mobile Date List
];

List<String> platformList = [
  //Platforms
];
