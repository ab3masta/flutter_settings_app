import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SettingsExampleList settingsExampleList = SettingsExampleList(settingsExample: [
  SettingsExample(name: "Classic Leather", image: "assets/images/Item_1.png",nbrOption: 10),
  SettingsExample(name: "Classic Leather", image: "assets/images/Item_1.png",nbrOption: 10),
  SettingsExample(name: "Classic Leather", image: "assets/images/Item_1.png",nbrOption: 10),
]);

class SettingsExampleList {
  List<SettingsExample> settingsExample;
  SettingsExampleList({
    @required this.settingsExample,
  });
}

class SettingsExample {
  String name;
  int nbrOption;
  String image;

  SettingsExample({
    @required this.name,
    @required this.nbrOption,
    @required this.image,
  });
}
