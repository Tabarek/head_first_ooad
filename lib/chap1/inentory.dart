//-------------------------------- INVENTORY ---------------------------------//
import 'package:head_first_ooad/chap1/enum.dart';
import 'package:head_first_ooad/chap1/guitar.dart';
import 'package:head_first_ooad/chap1/guitar_spec.dart';

class Inventory {
  List<Guitar>? _guitars;
  Inventory() {
    _guitars = <Guitar>[];
  }
  void addGuitar(
      String? serialNum,
      GuitarBuilder? builder,
      String? model,
      Type? type,
      Wood? backWood,
      Wood? topWood,
      double? price,
      int? numStrings) {
    GuitarSpec guitarSpec =
        GuitarSpec(builder, model, type, backWood, topWood, numStrings!);
    Guitar guitar = Guitar(serialNum, price, guitarSpec);

    _guitars!.add(guitar);
  }

  Guitar? getGuitar(String serialNum) {
    Guitar? guitar;
    for (int i = 0; i < _guitars!.length; i++) {
      guitar = _guitars![i];
      if (guitar.getSerialNum == serialNum) {
        return guitar;
      }
    }

    return guitar;
  }

  List<Guitar>? search(GuitarSpec searchGuitar) {
    List<Guitar>? matchesList = [];
    Guitar? guitar;
    for (int i = 0; i < _guitars!.length; i++) {
      guitar = _guitars![i];
      if (guitar.getSpec.matches(searchGuitar)) {
        matchesList.add(guitar);
      }
    }
    return matchesList;
  }
}
