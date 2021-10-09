import 'package:head_first_ooad/chap1/enum.dart';
import 'package:head_first_ooad/chap1/guitar_spec.dart';

class Guitar {
  String? _serialNum;
  double? _price;
  GuitarSpec? _spec;

  Guitar(String? serialNum, double? price, GuitarSpec? spec) {
    _serialNum = serialNum;
    _price = price;
    _spec = spec;
  }

  String get getSerialNum => _serialNum!;
  double get getPrice => _price!;
  GuitarSpec get getSpec => _spec!;

  void setPrice(double newPrice) {
    _price = newPrice;
  }
}
