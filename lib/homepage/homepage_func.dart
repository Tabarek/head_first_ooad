import 'dart:io';

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

  print('Fido all done');
  try {
    sleep(Duration(seconds: 10));
  } catch (e) {
    print('Fido stuck outside');
    print('Fido start barking');

    print('Gina grape the remote control');
    remote.pressedButton();
  }
}
