
class Account{
  late int accNo;
  String holderName;
  double _balance;
  int lastDigit= 110010;

  get balance => _balance;

  Account(this.holderName, [double this._balance=1000.00]) {
    accNo = lastDigit;
    lastDigit++;
  }

  void printAccount(){
   print("AccNo: $accNo, Name: $holderName, balance: $balance"); 
  }
}

class Transaction{
  DateTime dateTime;
  String description;
  double amount;
  String drOrCr;

 List<Transaction> txn = [];

  Transaction(this.description, this.amount, this.drOrCr) : dateTime = DateTime.now(){

  }

  @override
  String toString() => "$description, $amount, $drOrCr";

  double desposit(String description, double money){
    amount+=money;
    txn.add(Transaction(description, amount, "CR"));
    return amount;
  }

double withdraw(String description, double money){
  amount-=money;
  txn.add(Transaction(description, amount, "DR"));
  return amount;
}

void txnList(){
  for(var i=0; i<txn.length;i++)
  print(txn[i]);
}

}
void main() {

 var rahul = Account("Rahul");
 var sanjay = Account("Sanjay");
 var txn = Transaction("Swiggy", 3000.00, "Dr");
 rahul.printAccount();
 txn.desposit("Slalry", 5000.00);
 txn.withdraw("Uber", 500.00);
 txn.txnList();

}