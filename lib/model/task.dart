class Task {
  final String name;
  var isDone = false;

  Task({required this.name, required this.isDone});

  void toogleCheckState() {
    isDone = !isDone;
  }
}
