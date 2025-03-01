List<List<int>> permuteUnique(List<int> nums) {
  List<List<int>> result = [];
  nums.sort();
  
  void backtrack(List<int> tempList, List<int> remainingNums) {
    if (remainingNums.isEmpty) {
      result.add(List.from(tempList));
      return;
    }
    
    for (int i = 0; i < remainingNums.length; i++) {
      if (i > 0 && remainingNums[i] == remainingNums[i - 1]) continue; // Skip duplicates
      tempList.add(remainingNums[i]);
      backtrack(tempList, List.from(remainingNums)..removeAt(i));
      tempList.removeLast();
    }
  }
  
  backtrack([], nums);
  return result;
}

void main() {
  List<int> nums1 = [1, 1, 2];
  List<int> nums2 = [1, 2, 3];
  
  print(permuteUnique(nums1)); // Output: 
