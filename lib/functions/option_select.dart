import 'dart:io';
/*
Create a function called OptionSelect which takes in a list of options,
prints them out to the user and asks for the user to select an option.

It should then print something like

List<String> options = ['BurgerKing', 'McDonalds'];
int idx = OptionSelect('Where do you want to eat?', options );
and returns the users answer.

Where do you want to eat?
[1] BurgerKing
[2] McDonalds
Bonus point!
Can you make it so that if the user does not select a correct option,
that the function will simply ask the user again to input an answer?

 */

int? OptionSelect(String statement, List<String> options) {

  print(statement);
  options.forEach((element) {
    print(element);
  });
  int userInput = 0;
  do {
    String? input = stdin.readLineSync();
    try {
      userInput = int.parse(input!);
      if (userInput != 1 && userInput != 2) {
        print("Invalid input. Please enter either 1 or 2.");
      }
    } catch (e) {
      print("Invalid input. Please enter either 1 or 2.");
    }
  } while (userInput != 1 && userInput != 2);

}
