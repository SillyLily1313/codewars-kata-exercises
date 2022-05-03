/*codewars kata for Sum of positive
You get an array of numbers, return the sum of all of the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: if there is nothing to sum, the sum is default to 0.
*/

int positiveSum(List<int> arr) {
  int sum = 0;
  arr.forEach((i) => (i >= 0) ? sum += i : sum = sum);
  return sum;
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  print(positiveSum(arr) == 15
      ? "success ✅ => positiveSum is 15"
      : "error ❌ => positiveSum is ${positiveSum}");
  arr = [1, -2, 3, 4, 5];
  print(positiveSum(arr) == 13
      ? "success ✅ => positiveSum is 13"
      : "error ❌ => positiveSum is ${positiveSum}");
  arr = [];
  print(positiveSum(arr) == 0
      ? "success ✅ => positiveSum is 0"
      : "error ❌ => positiveSum is ${positiveSum}");
  arr = [-1, -2, -3, -4, -5];
  print(positiveSum(arr) == 0
      ? "success ✅ => positiveSum is 0"
      : "error ❌ => positiveSum is ${positiveSum}");
  arr = [-1, 2, 3, 4, -5];
  print(positiveSum(arr) == 9
      ? "success ✅ => positiveSum is 9"
      : "error ❌ => positiveSum is ${positiveSum}");
  arr = [9, 10];
  print(positiveSum(arr) == 19
      ? "success ✅ => positiveSum is 9 + 10 which is 21 https://youtube.com/shorts/7hhQLozezak?feature=share"
      : "error ❌ => positiveSum is ${positiveSum}");
}
