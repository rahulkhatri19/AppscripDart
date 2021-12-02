class Itrator{

}

void main(){

  var list = [11,33,56];
  
  for(var i=0; i<list.length; i++){
    print(list[i]);
  }

  print("while (it.moveNext())");

  var it = list.iterator;
  while(it.moveNext())
  print(it.current);

  print("for in");

  for(var it in list)
  print(it);

  print("For Each");
  list.forEach((element) { print("element : $element");});
  print("Any < 10 ${list.any((element) => element < 10)}");
  print("every < 40 ${list.every((element) => element < 40)}");
  print("contains 12 ${list.contains(12)}");
  print("sum ${list.reduce((value, element) => value * element)}");
  print("double ${list.map((e) => e*e)}");
  print("reverse ${list.reversed}");

}