/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */



import 'package:BlackJack/functions/functions.dart';

int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet){
  int playerSum = 0;
  int houseSum = 0;
  for(int i in playerHand){
    playerSum += i;
  }
  for(int i in houseHand){
    houseSum += i;
  }
  while(CheckIfBusted(playerHand) == false && CheckIfBusted(houseHand) == false){
    if(playerSum == houseSum){
      print('Draw');
    }
    if(playerSum < houseSum){
      print('The house wins, you lose $currentBet');
      currentBankRoll -= currentBet;
    }else if(playerSum > houseSum){
      print('You win, $currentBet added to your bankroll.');
      currentBankRoll += currentBet;
    }
  }
  return currentBet;
}