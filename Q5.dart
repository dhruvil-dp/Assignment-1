void main(){
  List<String> s1 = ['l','i','s','t','e','n'];
  List<String> s2 = ['s','i','l','e','n','t'];
  int n1 = s1.length;
  int n2 = s2.length;
  
  if(n1 != n2){
    print('Not Anagram');
  };
  
  
  s1.sort((a, b) => a.compareTo(b));
  print(s1);
  s2.sort((a, b) => a.compareTo(b));
  print(s2);

  bool flag = true;
  for (var i = 0; i < n1; i++) {
    if(s1[i] != s2[i]){
      flag=false;
    }
  }
  if(flag==true)print('A');
  else print('NA');
}