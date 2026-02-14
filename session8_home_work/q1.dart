/* 
Q1
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance. */

class BankAccount {
  double _balance = 0;

  set balance(double balance) {
    if (balance < 0) {
      print('Invalid balance');
    } else {
      (_balance = balance);
    }
  }

  double get balance => this._balance;
}

void main() {
  BankAccount bankAccount = BankAccount();
  bankAccount.balance = 20;
  print(bankAccount.balance);

  bankAccount.balance = -200;
  print(bankAccount.balance);
}
