void main() {
  List<String> techs = ['Flutter', 'Dart', 'JavaScript', 'Turntable'];
  techs.where((name)=>name.contains('r')).forEach(print);

}
