import 'package:flutter/material.dart';
import 'package:head_first_ooad/chap2/dog_door.dart';
import 'package:head_first_ooad/chap2/remote.dart';

/// CHAPTER 2
dogDoorFunc(BuildContext context) {
  final snackBar = SnackBar(content: Text('See the terminal 👀'));

  ScaffoldMessenger.of(context).showSnackBar(snackBar);

  DogDoor dogDoor = DogDoor();
  Remote remote = Remote(dogDoor);

  print('Fido barks to go outside');
  remote.pressedButton();

  print('Fido has gone outside');
  remote.pressedButton();

  print('Fido all done');
  remote.pressedButton();
}
