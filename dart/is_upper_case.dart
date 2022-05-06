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
  var strings = {
    "c": false,
    "C": true,
    "hello I AM DONALD": false,
    "HELLO I AM DONALD": true,
    "ACSKLDFJSgSKLDFJSKLDFJ": false,
    "ACSKLDFJSGSKLDFJSKLDFJ": true
  };

  strings.entries.forEach((str) => (print(isUpperCase(str.key) == str.value
      ? "success ✅ => ${str.key} isUpperCase is ${str.value}"
      : "error ❌ => ${str.key} isUpperCase is not the correct value")));
}
