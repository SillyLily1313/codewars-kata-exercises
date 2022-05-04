/* codewars kata for Is the string uppercase?

In this Kata, a string is said to be in ALL CAPS 
whenever it does not contain any lowercase letter 
so any string containing no letters at all is trivially 
considered to be in ALL CAPS.

Task

isUpperCase("c") == false
isUpperCase("C") == true
isUpperCase("hello I AM DONALD") == false
isUpperCase("HELLO I AM DONALD") == true
isUpperCase("ACSKLDFJSgSKLDFJSKLDFJ") == false
isUpperCase("ACSKLDFJSGSKLDFJSKLDFJ") == true
*/

bool isUpperCase(String str) {
  String cmpStr = str.replaceAllMapped(new RegExp(r'[a-z]'), (isLower) {
    return '';
  });
  return (cmpStr == str) ? true : false;
}

void main() {
  String str = "c";
  print(isUpperCase(str) == false
      ? "success ✅ => ${str} isUpperCase is false"
      : "error ❌ => ${str} isUpperCase is not false");
  str = "C";
  print(isUpperCase(str) == true
      ? "success ✅ => ${str} isUpperCase is true"
      : "error ❌ => ${str} isUpperCase is not true");
  str = "hello I AM DONALD";
  print(isUpperCase(str) == false
      ? "success ✅ => ${str} isUpperCase is false"
      : "error ❌ => ${str} isUpperCase is not false");
  str = "HELLO I AM DONALD";
  print(isUpperCase(str) == true
      ? "success ✅ => ${str} isUpperCase is true"
      : "error ❌ => ${str} isUpperCase is not true");
  str = "ACSKLDFJSgSKLDFJSKLDFJ";
  print(isUpperCase(str) == false
      ? "success ✅ => ${str} isUpperCase is false"
      : "error ❌ => ${str} isUpperCase is not false");
  str = "ACSKLDFJSGSKLDFJSKLDFJ";
  print(isUpperCase(str) == true
      ? "success ✅ => ${str} isUpperCase is true"
      : "error ❌ => isUpperCase is not true");
}
