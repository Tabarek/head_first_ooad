class DogDoor {
  bool? _open;

  DogDoor() {
    _open = false;
  }

  void open() {
    print('Dog door opens');
    _open = true;
  }

  void close() {
    print('Dog door closes');
    _open = false;
  }

  bool get isOpen => _open!;
}
