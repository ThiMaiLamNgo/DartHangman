import 'dart:io';
class Inputhandler{
 getGuess(){
   print('Enter character to guess: ');
   //make sure only one character
   return stdin.readLineSync();
 }
}