class TransactionList{

  final DateTime date;
  final String description;
  final double amount;
  final String drOrCr;

  TransactionList(this.description, this.amount, this.drOrCr): date = DateTime.now();

  //  method overloding as if we print list i iwll return Instance of Class_name.
  @override
  String toString() => "${date.day}/${date.month}: $description $amount$drOrCr";
}


void main(){
  List<TransactionList> txn = [];
  txn.add(TransactionList("Ola Trip", 500.00, "Dr"));
  txn.add(TransactionList("Swiggy Order", 300.00, "Dr"));

  for(var it in txn) print(it);
}