class Optional{

}

//  Formal Parameter
int add(int a, int b){
  return a+b;
}

//  Informal Parameter
var sum = add(5, 7);

void series([int a=0, int b=0, int c=0]){}

//  optional parameter
void record(int id, [String name = "Saurish",double balance=200.00]){}

//  name parameter

void namePara({int top=1, int bottom=2, int left=3, int right=4, int angle =5}){
  print("Top:$top, Bottom:$bottom, Left:$left, Right:$right, Angle:$angle");
}


void compulsaryPara(int id, {required String name, double salary=1000.00}){}

void main(){

  series();
  series(1);
  series(1,2);
  series(1,2,3);

record(1, "Rahul", 200.00);
record(2, "Sanjay");
record(3);

namePara(top: 10);
namePara(bottom: 50);
namePara(angle: 100);

compulsaryPara(10, name: "Rahul");
compulsaryPara(20, name: "Sanjay", salary:20000.00);
}