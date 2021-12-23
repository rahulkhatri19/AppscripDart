
//  sync 
//  yield i skey word 
 generator() sync*{
   yield 12;
   yield 20;
   yield 30;
 } 

 void main (){
   for(var value in generator()){
     print(value);
   }
 }
