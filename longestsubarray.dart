int longestSubarrayWithSum(List<int> arr, int k) {
  int maxLength = 0;
  int currentSum = 0;
  int left = 0;
  
  for (int right = 0; right < arr.length; right++) {
    currentSum += arr[right];
    
    while (currentSum > k) {
      currentSum -= arr[left];
      left++;
    }
    
    maxLength = max(maxLength, right - left + 1);
  }
  
  return maxLength;
}

int max(int a, int b) => a > b ? a : b;

void main() {
  List<int> arr1 = [3, 1, 2, 1, 4, 5];
  int k1 = 7;
  
  print(longestSubarrayWithSum(arr1, k1)); // Output: 4
}
