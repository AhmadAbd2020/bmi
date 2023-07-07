import 'dart:math';

class BMIBrain {
  
  double _height = 180;
  int _weight = 60;
  int _age = 20;
  bool isMaleSelected = true;
  bool isFemaleSelected = false;
  
  double get height {
    return _height;
  }
double changeHeight(val){
return  _height=val;
}
  set height(h) {
    h = _height;
  }

  int get weight {
    return _weight;
  }

  set weight(h) {
    h = _weight;
  }

  int get age {
    return _age;
  }

  set age(h) {
    h = _age;
  }

  int increaseAge() {
    return _age++;
  }

  int decreaseAge() {
    return _age--;
  }

  int increaseWeight() {
    return _weight++;
  }

  int decreaseWeight() {
    return _weight--;
  }

  double calculateBMI() {
    return (_weight / pow((_height / 100), 2));
  }
}
