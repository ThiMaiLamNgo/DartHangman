import 'dart:io';
import 'dart:math';
//import 'wordsBank.dart';

void main() {
  randomWord();
}
List<String> wordBank = [
  'hello',
  'letter',
  'candy',
  'requirement',
  'machine',
  'apple'
];
void randomWord() {

  int randomNumber = Random().nextInt(wordBank.length);
  String current_word = wordBank[randomNumber];
  print(current_word);
}
