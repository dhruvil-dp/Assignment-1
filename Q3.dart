void main() {
  List<int> arr = [300,40,60,90,100,12,16, 17, 4, 3, 5, 2];
  var size= arr.length;
  for (int i = 0; i < size; i++) 
    { 
        int j; 
        for (j = i+1; j < size; j++) 
        { 
            if (arr[i] < arr[j]) 
                break; 
        }     
        if (j == size)
            print(arr[i]) ; 
  } 

}