def isSubsetSum(arr, n, sum):
    dp = [[False for _ in range(sum + 1)] for _ in range(n + 1)]
    
    for i in range(n + 1):
        dp[i][0] = True
    
    for i in range(1, n + 1):
        for j in range(1, sum + 1):
            if arr[i - 1] <= j:
                dp[i][j] = dp[i - 1][j] or dp[i - 1][j - arr[i - 1]]
            else:
                dp[i][j] = dp[i - 1][j]
    
    return dp[n][sum]

arr1 = [3, 34, 4, 12, 5, 2]
sum1 = 9
n1 = len(arr1)
print(isSubsetSum(arr1, n1, sum1))

arr2 = [3, 34, 4, 12, 5, 2]
sum2 = 30
n2 = len(arr2)
print(isSubsetSum(arr2, n2, sum2))
