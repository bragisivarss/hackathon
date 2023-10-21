/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String? CardNamer(int i){
  String result = i.toString();
  if(i == 1) {
    result = "Ace";
  } else if(i == 11) {
    result = "Jack";
  } else if(i == 12) {
    result = "Queen";
  } else if(i == 13) {
    result = "King";
  }
  print(result);
  return result;
}
