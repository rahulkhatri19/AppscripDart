void main(){
  print("Hello World");
  hello("Hello ", "World!");
  hello(5,7);
  typePrint();
}

void hello(a, b){
  print(a+b);
}

//  There is not Native Data type in Dart
//  it only has Objects
void typePrint(){
  bool taskDone = false;
  print("Task Done type:${taskDone.runtimeType}, $taskDone");

  double age = 22.5;
  num kms = 295.05;

  print("Age type:${age.runtimeType}, $age,  kms type:${kms.runtimeType}, $kms");

 BigInt galaxyDis = BigInt.parse("12345678901234567890123456789");
 print("galaxyData:${galaxyDis.runtimeType}, $galaxyDis");

 print(3.14.round());
}