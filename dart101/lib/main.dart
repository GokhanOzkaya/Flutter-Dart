void main() {
  const DART101 = "I LOVE DART";
  print(DART101);
  final DART_FINAL = "THIS IS FINAL";
  print(DART_FINAL);
  var dart_var = "THİS İS A VARİBLE";
  print(dart_var);
  dart_var = "THİS İS A NEW VARAİBLE";
  print(dart_var);

  var number = 1;
  double number2 = 12.2;
  var sum = (number + number2);
  print(sum.toInt());

  String name = "Gokhan";
  String surname = "\nOzkaya";
  String price = "The price is ${number2} ";
  print(name + " " + surname);
  print(price);

  String name3 = ''' aı asf sa fa s  agwgf a a sfa sf
   asf af s afwakjg kg gıougoıg a glsfa s da lsgdl lgu
   a sf apıof  
    asf wafasdga sdf ''';
  print(name3);

  bool istrue = number2 < 0;
  print(istrue);

  String? user_name;
  print(user_name);

  late String mavi;
  mavi = "Gokhan";
  print(mavi);
}
