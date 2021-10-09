import 'package:head_first_ooad/chap2/dog_door.dart';

class Remote {
  late DogDoor _door;

  Remote(DogDoor door) {
    _door = door;
  }

  void pressedButton() {
    print('Pressed the remote control button');
    if (_door.isOpen) {
      _door.close();
    } else {
      _door.open();
    }
  }
}
