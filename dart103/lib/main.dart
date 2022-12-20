import 'package:flutter/material.dart';

void main() {
  var i = 0;

  do {
    i++;
    print("Number is = $i");
    if (i == 10) {
      break;
    }
  } while (true);

  var number = 5;
  switch (number) {
    case 1:
      print("Number is 1");
      break;
    case 2:
      print("Number is 2");
      break;
    case 3:
      print("Number is 3");
      break;
    case 4:
      print("Number is 4");
      break;
    default:
      print("None");
  }
}
