import 'dart:io';
void main() {
  print('No of test');
  int t = int.parse(stdin.readLineSync());
  while (t > 0) {
    print('No of inputs');
    int n = int.parse(stdin.readLineSync());
    List<int> a = [n];
    for (var i = 0; i < n; i++) {
      print('Input No${i+1}');
      a.add(int.parse(stdin.readLineSync()));
      
    }
    
    a.sort((a, b) => a.compareTo(b));
    int i;
    for (i = 0; i < n - 1; i++) {
      if (a[i] == a[i + 1]) {
        print('BOYS');
        break;
      }
    }
    if(i==n-1){
      print('GIRLS');
    }
    t--;
  }
}
