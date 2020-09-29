void main() {
  List<int> arr = [1,2,3,5,4,7];
  
  var size = arr.length;
  var miss = (size + 1) * (size + 2) / 2;
  for (var i = 0; i < size; i++) {
    
    miss-=arr[i];
  }
  print(miss);
} 