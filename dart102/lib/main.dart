void main() {
  int number = 4;
  int number2 = 5;

  var c = number2 + number;
  print(c);

  bool isBigger = number < number2;
  print(isBigger);

  int isSmaller = number < 5 ? number++ : number;
  print(isSmaller);

  var sayi = 7;
  if (sayi < 8) {
    print("Number is smaller than 8");
  } else if (sayi > 3 && sayi < 10) {
    print("Nuber is btween with 3 and 10");
  } else {
    print("Else is working");
  }
  if (sayi > 5) {
    if (sayi == 7) {
      return print("Number is 7");
    }
    print("Number is bigger than 5");
  } else {
    print("Else is working for 7");
  }

  for (var i = 0; i < 7; i++) {
    print("Number is $i");
  }

  while (true) {
    print(sayi);
  }
}
