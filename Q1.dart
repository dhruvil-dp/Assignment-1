import 'dart:io';
import 'dart:collection';
import 'Q1_data.dart';

void main() {
  Map<String, Map> customer = {
    'ABC': data1,
    'DEF': data2,
    'IJK': data3,
    'PQR': data4,
    'XYZ': data5,
  };
  print('Enter Customer Name');
  var custName = stdin.readLineSync().toUpperCase();
  if (customer.containsKey(custName)) {
    if (custName == 'ABC') {
      print('Customer Name:${custName}');
      print('Office Add:${office1}');
      print('Residence Add:${residence1}');
      final sorted1 = new SplayTreeMap<String, dynamic>.from(
          details1, (a, b) => details1[a] > details1[b] ? 1 : -1);
      print('Products${sorted1}');
      print('Total:${total1}');
    }
    if (custName == 'DEF') {
      print('Customer Name:${custName}');
      print('Office Add:${office2}');
      print('Residence Add:${residence2}');
      final sorted2 = new SplayTreeMap<String, dynamic>.from(
          details2, (a, b) => details2[a] > details2[b] ? 1 : -1);
      print('Products${sorted2}');
      print('Total:${total2}');
    }
    if (custName == 'IJK') {
      print('Customer Name:${custName}');
      print('Office Add:${office3}');
      print('Residence Add:${residence3}');
      final sorted3 = new SplayTreeMap<String, dynamic>.from(
          details3, (a, b) => details3[a] > details3[b] ? 1 : -1);
      print('Products${sorted3}');
      print('Total:${total3}');
    }
    if (custName == 'PQR') {
      print('Customer Name:${custName}');
      print('Office Add:${office4}');
      print('Residence Add:${residence4}');
      final sorted4 = new SplayTreeMap<String, dynamic>.from(
          details4, (a, b) => details4[a] > details4[b] ? 1 : -1);
      print('Products${sorted4}');
      print('Total:${total4}');
    }
    if (custName == 'XYZ') {
      print('Customer Name:${custName}');
      print('Office Add:${office5}');
      print('Residence Add:${residence5}');
      final sorted5 = new SplayTreeMap<String, dynamic>.from(
          details5, (a, b) => details5[a] > details5[b] ? 1 : -1);
      print('Products${sorted5}');
      print('Total:${total5}');
    }
  };

  
}
