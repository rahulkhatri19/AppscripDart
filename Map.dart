
var myMap = {224:"Big B", 420:"Small B"};
void main(){

//  add entry to map
myMap[123] = "king B";
myMap[124] = "Queen B";

//  edit entry
myMap[224] = "Baby B";

//  remove entry from map
myMap.remove(420);

    for(var key in myMap.keys){
      print("key: $key, value: ${myMap[key]}");
    }
  }