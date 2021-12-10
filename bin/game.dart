import 'dart:io';
import 'wordHandler.dart';
import 'wordbank.dart';
import 'diagram.dart';
import 'inputhandler.dart';

class Game{
  int incorrectGuesses = 0;
  WordHandler wordhandler;
  String currentWord;
  //WordBank wordbank;
  Diagram diagram = Diagram();
  Inputhandler inputhandler = Inputhandler();
  //bool isWinner = false;

  Game(){
    initializeGame();
    //play();
    start();
  }
  void initializeGame(){
    currentWord = WordBank('words.txt').getWord();
    wordhandler = WordHandler(currentWord);
  }
  playRound(){
    //make the terminal screen clear each time
    print(Process.runSync("clear", [], runInShell: true).stdout);
    diagram.draw(incorrectGuesses);
    wordhandler.display();
    String guess = inputhandler.getGuess();
    if(wordhandler.checkChar(guess)){
      wordhandler.addChar(guess);
      print('correct');
    } else{
      //print('wrong');
      handleWrongGuess();
      //incorrectGuesses++;
    }
    if(hasWon()){
      print('You won!');
      //reset();
    }
  }
  bool hasWon(){
    print(wordhandler.checkMatch());
    return wordhandler.checkMatch();
  }
  handleWrongGuess(){
    incorrectGuesses ++;
  }
  start(){
    while(incorrectGuesses < 7){
      playRound();
    }
  }

  reset(){
    incorrectGuesses = 0;
    wordhandler.reset();
    initializeGame();
  }
}