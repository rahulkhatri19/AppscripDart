import 'dart:io';
void main(){

  Future.delayed(Duration(seconds: 1), (){
    print("Hello Lars");
    sleep(Duration(seconds: 5));
  });

  for(var i=0; i<10; i++){
    stdout.write(".");
    sleep(Duration(seconds: 1));
  }
  print("End of Program");
  
}