bool isSubsetSum(List<int> arr, int n, int sum) {
  List<List<bool>> dp = List.generate(n + 1, (i) => List.filled(sum + 1, false));
  
  for (int i = 0; i <= n; i++) {
    dp[i][0] = true;
  }
  
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= sum; j++) {
      if (arr[i - 1] <= j) {
        dp[i][j] = dp[i - 1][j] || dp[i - 1][j - arr[i - 1]];
      } else {
        dp[i][j] = dp[i - 1][j];
      }
    }
  }
  
  return dp[n][sum];
}

void main() {
  List<int> arr1 = [3, 34, 4, 12, 5, 2];
  int sum1 = 9;
  int n1 = arr1.length;
  print(isSubsetSum(arr1, n1, sum1)); // Output: true
  
  List<int> arr2 = [3, 34, 4, 12, 5, 2];
  int sum2 = 30;
  int n2 = arr2.length;
  print(isSubsetSum(arr2, n2, sum2)); // Output: false
}
