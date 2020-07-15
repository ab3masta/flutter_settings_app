import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SettingsExampleList settingsExampleList = SettingsExampleList(settingsExample: [
  SettingsExample(name: "Play store", image: "assets/images/google-play.png",nbrOption: 10),
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
