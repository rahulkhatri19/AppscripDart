void main () {
  var list = [11,23,36];

  print(list);

  print("First value ${list.first}");
  print("List length ${list.length}");

  list.add(45);
  print(list);


  for(var index=0; index<list.length; index++)
  print(list[index]);

  print("Iterating over list");
  for(var item in list)
  print(item);
}