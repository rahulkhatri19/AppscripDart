void main() {
  var list = [11, 22, 44];
  var listSum = list.reduce((sum, element) => sum + element);
  print("List sum:$listSum");
  var reduceSum = list.fold(100, (num sum, element) => sum + element);
  print("List reduce sum: $reduceSum");

  print("Map Practice");

  var foodMap = [
    {"zomato": 200.0},
    {"Swiggi": 405.0},
    {"Food panda": 256.0}
  ];

  var foodMapSum =
      foodMap.fold(0, (num sum, element) => sum + (element.values.first));
  print("Food Map sum : $foodMapSum");
}
