class Node<T> {
  T value;
  Node<T> ? next = null; 
  Node(this.value);
}

class MyList<T> {
  Node<T>? head = null;
  Node<T>? tail = null;

  void add(T value) {
    //  new node created
    var newNode = Node<T>(value);

    if (null == head) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

Iterable<T> value() sync*{
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
  MyList list = MyList<int>();
  list.add(3);
  list.add(4);
  list.add(5);

  var anotherList = MyList<String>();

 // list.printForword();

 for(var value in list.value()){
  // print(value);
   anotherList.add((value*2).toString());
 }

 for(var value in anotherList.value())
 print(value);
}