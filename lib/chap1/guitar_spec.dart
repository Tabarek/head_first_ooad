import 'package:head_first_ooad/chap1/enum.dart';

class GuitarSpec {
  String? _model;
  GuitarBuilder? _builder;
  Type? _type;
  Wood? _backWood, _topWood;
  int? _numStrings;

  GuitarSpec(GuitarBuilder? builder, String? model, Type? type, Wood? backWood,
      Wood? topWood, int numStrings) {
    _builder = builder;
    _model = model;
    _type = type;
    _backWood = backWood;
    _topWood = topWood;
    _numStrings = numStrings;
  }

  GuitarBuilder get getBuilder => _builder!;
  String get getModel => _model!;
  Type get getType => _type!;
  Wood get getBackWood => _backWood!;
  Wood get getTopWood => _topWood!;
  int get getNumStrings => _numStrings!;

  bool matches(GuitarSpec otherSpec) {
    if (_builder != otherSpec.getBuilder) return false;

    String? model = otherSpec.getModel.toLowerCase();
    if (model != '' && model != otherSpec.getModel.toLowerCase()) return false;
    if (_type != otherSpec.getType) return false;
    if (_backWood != otherSpec.getBackWood) return false;
    if (_topWood != otherSpec.getTopWood) return false;
    return true;
  }
}
