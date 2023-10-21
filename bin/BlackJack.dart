import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
import 'package:BlackJack/functions/deal_card.dart';

/*
  Can you puzzle the methods together to form the game?
 */

/*


 Option Select!
  List<String> options = ["[1]Hit", "[2]Stay"];
  int? idx = OptionSelect("Do you want to Hit or Stay", options);
*/

void main() {
  List<int>? deck = ShuffledDeck();

  DealCard(deck!);
  List<int> hand = [];
  DrawCard(hand, deck);

}

