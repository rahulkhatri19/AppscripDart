void main(){

// 
var rahul = Account("Rahul Khatri", 10000);
var sanjay = Account("Sanjay");

List<Transaction> txn = [];
// rahul.desposit(5000);
// rahul.withDraw(2000);
// print("aNo:${rahul._balance}, name:${rahul.accountHolderName}, balance:${rahul._balance}");
// print(rahul.phrase);
// rahul.depositAmount(6000, description: "Salary");
// rahul.withDrawAmount(3000, description: "Swiggy");
rahul.printAccount();
sanjay.printAccount();

}

class Transaction {
  double amount;
  String description;
  String drCr;

  Transaction(this.amount, this.description, this.drCr);

  @override
  String toString() {
   return "$amount, $description, $drCr"; 
   }
}

class Account{
  static int finalAccountNumber= 11000;
  late final int accountNumber;
  final String accountHolderName;
  double _balance;

  String _phrase = "I like Dart";

  List<Transaction> _txn = [];

  String get phrase => _phrase;
  // setter with Lamda
  // void set phrase(String newPhrase) => _phrase = newPhrase;

  //   setter with validation
  void set phrase(String newPhrase){
    if(newPhrase.trim() != ""){
      _phrase = newPhrase;
    }
  }

//  getter with lamda
  double get balance => _balance;

//  init mathod, dtor, ctor
  Account(this.accountHolderName, [this._balance = 1000.00]){
    accountNumber = finalAccountNumber+1;
    finalAccountNumber ++;
  }

//  method with lamda
  double desposit(double amount) => _balance += amount;

  double withDraw(double amount) => _balance -= amount;

//  method store data in list : deposit money txn stored
  double depositAmount(double amount, {required String description}){
    _txn.add(Transaction(amount, description, "Cr"));
    return _balance += amount;
  }

//  method store data in list : withdraw money transaction stored
  double withDrawAmount(double amount, {required String description}){
    _txn.add(Transaction(amount, description, "DR"));
    return _balance -= amount;
  }

//  priting txn history like Passbook.
  void printAccount(){
    print("$accountNumber: $accountHolderName, balance $_balance");
    for(var it in _txn)
    print(it);
  }
}

