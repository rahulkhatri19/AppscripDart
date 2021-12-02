class Animal {
  void eat(){
    print("Yummy Yummy");
  }
}

abstract class Music {
  void playMusic();
}

class Human extends Animal {
 
}

class Sanjay extends Human implements Music{
  @override
  void playMusic() {
    print("Sa, Re, Ga, Ma, Pa, Gha, Ni, Sa");
  }

}

void main (){
  var human = Human();
  human.eat();

  var sanjay = Sanjay();
  sanjay.playMusic();
  sanjay.eat();
}