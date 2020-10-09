import 'dart:io';

class Account {
  String acType = '';
  String acHolderName = '';
  double acBalance = 0;
  int withdrawnLimit = 0;
  double roi = 0;
}

class SavingsAc extends Account {
  String acType = 'Savings';
  double acBalance;
  double roi = 0.04;
  int withdrawnLimit = 10000;
}

class CurrentAc extends Account {
  String acType = 'Current';
  double roi = 0.05;
  double acBalance;
  double overdraft;
}

class FixedDepositAc extends Account {
  String acType = 'FixedDeposit';
  double roi = 0.07;
  int depositPeriod = 2;
}

double deposit(double acBalance) {
  int depval;
  print('Enter amount');
  depval = int.parse(stdin.readLineSync());
  acBalance = acBalance + depval;
  return acBalance;
}

double withdrawl(double acBalance, String type, int limit, double overdraft,
    int depositPeriod, double roi) {
  int witval;
  if (type != 'FixedDeposit') {
    print('Enter amount');
    witval = int.parse(stdin.readLineSync());
    if (type == 'Savings') {
      if (witval > limit) {
        print('Cannot withdraw more than 10000');
      } else if (acBalance <= 10000) {
        print('Minimum Balance should be 10000');
      } else {
        acBalance = acBalance - witval;
      }
    } else if (type == 'Current') {
      if (acBalance == 0) {
        if (witval > overdraft) {
          print('Overdraft limit crossed');
        } else if (witval <= overdraft) {
          acBalance = acBalance - witval;
          overdraft = overdraft - witval;
          print('Overdraft Limit :$overdraft');
        }
      } else {
        acBalance = acBalance - witval;
      }
    }
  } else if (type == 'FixedDeposit') {
    roi = 0.05;
    print(roi);
    acBalance = calcInterest(acBalance, type, roi);
  }

  return acBalance;
}

double calcInterest(double balance, type, double roi) {
  double interest;
  if (type == 'Savings') {
    interest = balance * roi;
    balance = balance + interest;
    print(interest);
  } else if (type == 'Current') {
    interest = balance * roi;
    balance = balance - interest;
    print('Interest :$interest');
  } else if (type == 'FixedDeposit') {
    interest = balance * roi;
    balance = balance + interest;
    print('Interest :$interest');
  }
  return balance;
}

double choose(type, balance, roi, limit, overdraft, depositPeriod) {
  int y;
  while (y != 4) {
    print('1 Deposit');
    print('2 Withdwawl');
    print('3 Interest');
    print('4 Exit');
    print('enter opt');
    y = int.parse(stdin.readLineSync());
    if (y == 1) {
      if (type == 'FixedDeposit') {
        print('Cannot deposit in fixed deposit a/c');
      } else {
        balance = deposit(balance);
      }
    } else if (y == 2) {
      balance = withdrawl(balance, type, limit, overdraft, depositPeriod, roi);
    } else if (y == 3) {
      balance = calcInterest(balance, type, roi);
    } else if (y == 4) {
      break;
    }
  }

  return balance;
}

printDetails(acHolderName, type, balance){
  print('Accountholder Name : $acHolderName');
  print('Account Type : $type');
  print('Account Balamce : $balance');
}

void main() {
  int option;
  String opt = 'y';

  while (opt == 'y') {
    print('1. Savings Ac');
    print('2. Current Ac');
    print('3. FixedDeposit Ac');
    print('Enter Account Type');
    option = int.parse(stdin.readLineSync());
    if (option == 1) {
      SavingsAc sa = SavingsAc();
      print('Enter name');
      sa.acHolderName = stdin.readLineSync();
      print('Enter Balance');
      sa.acBalance = double.parse(stdin.readLineSync());
      double updatebal = choose(
          sa.acType, sa.acBalance, sa.roi, sa.withdrawnLimit, null, null);
      printDetails(sa.acHolderName, sa.acType, updatebal);
    } else if (option == 2) {
      CurrentAc ca = CurrentAc();
      print('Enter name');
      ca.acHolderName = stdin.readLineSync();
      print('Enter Balance');
      ca.acBalance = double.parse(stdin.readLineSync());
      ca.overdraft = ca.acBalance * 0.5;
      double updatebal = choose(ca.acType, ca.acBalance, ca.roi,
          ca.withdrawnLimit, ca.overdraft, null);
      printDetails(ca.acHolderName, ca.acType, updatebal);
    } else if (option == 3) {
      FixedDepositAc fda = FixedDepositAc();
      print('Enter name');
      fda.acHolderName = stdin.readLineSync();
      print('Enter Balance');
      fda.acBalance = double.parse(stdin.readLineSync());
      double updatebal = choose(
          fda.acType, fda.acBalance, fda.roi, null, null, fda.depositPeriod);
      printDetails(fda.acHolderName, fda.acType, updatebal);
    } else {
      print('Enter correct option');
    }
    print('Want to enter more');
    opt = stdin.readLineSync();
    if (opt == 'n') {
      break;
    }
  }
}
