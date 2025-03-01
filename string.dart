String repeatString(String inputStr) {
  RegExp regExp = RegExp(r'([a-zA-Z])(\d+)');
  Iterable<Match> matches = regExp.allMatches(inputStr);
  
  String result = '';
  
  for (var match in matches) {
    String char = match.group(1)!;
    int num = int.parse(match.group(2)!);
    result += char * num;
  }
  
  return result;
}

void main() {
  // Test cases
  String inputStr1 = "a1b10";
  String inputStr2 = "b3c6d15";

  print(repeatString(inputStr1));  
  print(repeatString(inputStr2));  
}
