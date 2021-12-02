void main(){

  ifElseCondition();

  largestOfThree(9, 8, 7);

  loop();

  dartClasses();
}

void ifElseCondition(){
  //  If condition
  if(3>2) print("If works");

  int value = 0;
  if(value ==0) print("if conditon for boolean");

  //  If else condition
  if(value > 10){
    print("if else contion : if works");
  } else {
    print("if else condition : else works");
  }
  
  //  else if 
  int a = 5;
  if(a<5){
    print("else if condition : if works");
  } else if(a<8){
    print("else if condition: else if works");
  } else {
    print("else if condition: else works");
  }
}

//  print largest of Three number using if else

void largestOfThree(a,b,c){
  if (a>b && a>c){
    print("A $a is Largest");
  }
  else if (b>c){
    print("B $b is Largest");
  } else {
    print("C $c is Larget");
  }
}

// loop

void loop(){

  //  tri for loop
  for(int i=0; i<10; i++)
  print(i);

  //  Itratable for loop
  for(int j in [22,33,45])
  print(j);

  //  While Loop
  int d=7;
  while(d<15){
  print("while Loop works");
    d++;
  }


  //  Do while loop
  d=7;
  do{
    print("do while loop works");
    d++;
  } while(d<15);

}

void dartClasses(){
var personClass= Person(1, "Sanjay Vyas");
var rahul = new Person(2, "Rahul Khatri");

print("${personClass.runtimeType}, rahul: ${rahul.runtimeType}");
print(personClass.name);
personClass.printPerson();
rahul.printPerson();
}


class Person{
  String name = "person property";
  void printPerson(){
    print("Person Execute Method $id, $name");
  }

  int id = 0;

//  Constructor for Dart 
  Person(int id, String name){
    this.id = id;    //   filed = arg
    this.name = name;
  }

   //   Another way to write constructor

  // Person(int myId, myName){
  //   id = myId;  //   arg = arg
  //   name = myName;
  // }
}