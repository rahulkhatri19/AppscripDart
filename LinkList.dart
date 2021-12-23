class Node {
  int value = 0;
  Node ? next = null; 
  Node(this.value) {
    this.value = value;
  }
}

class MyList {
  Node? head = null;
  Node? tail = null;

  void add(int value) {
    //  new node created
    var newNode = Node(value);

    if (null == head) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

Iterable<int> value() sync*{
for(var current= head; current!=null; current = current.next)
yield current.value;
}

  void printForword() {
    for (var current = head; current != null; current = current.next) {
      print(current.value);
    }
  }
}

void main() {
  MyList list = MyList();
  list.add(3);
  list.add(4);
  list.add(5);

  var anotherList = MyList();

 // list.printForword();

 for(var value in list.value()){
  // print(value);
   anotherList.add(value*2);
 }

 for(var value in anotherList.value())
 print(value);
}