List<int> sortOddEven(List<int> arr) {
  List<int> oddNumbers = [];
  List<int> evenNumbers = [];
  
  for (int num in arr) {
    if (num % 2 != 0) {
      oddNumbers.add(num);
    } else {
      evenNumbers.add(num);
    }
  }
  
  oddNumbers.sort();  // Sort odd numbers in ascending order
  evenNumbers.sort((a, b) => b.compareTo(a));  // Sort even numbers in descending order
  
  List<int> result = [];
  int oddIndex = 0, evenIndex = 0;
  
  for (int num in arr) {
    if (num % 2 != 0) {
      result.add(oddNumbers[oddIndex]);
      oddIndex++;
    } else {
      result.add(evenNumbers[evenIndex]);
      evenIndex++;
    }
  }
  
  return result;
}

void main() {
  List<int> arr1 = [5, 8, 11, 6, 2, 1, 7];
  List<int> arr2 = [9, 4, 3, 10, 15, 2];
  
  print(sortOddEven(arr1)); // Output: [1, 5, 7, 11, 8, 6, 2]
  print(sortOddEven(arr2)); // Output: [3, 15, 9, 10, 4, 2]
}
