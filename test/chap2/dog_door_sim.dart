import 'package:flutter_test/flutter_test.dart';
import 'package:head_first_ooad/chap2/dog_door.dart';
import 'package:head_first_ooad/chap2/remote.dart';

void main() {
  test('Opened Closed Dog Door', () {
    DogDoor dogDoor = DogDoor();
    Remote remote = Remote(dogDoor);

    print('Fido barks to go outside');
    remote.pressedButton();

    print('Fido has gone outside');
    //  remote.pressedButton();

    print('Fido all done');
    // remote.pressedButton();
    print('Fido back inside');
  });
}
