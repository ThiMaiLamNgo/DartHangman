import 'dart:io';

class WordHandler {
  List<String>  currentWord; //String
  //int wordLength;
  List<String> displayWord;
  //List<String> guessedChars;

  WordHandler(String currentWord){
    initWord(currentWord);

    //setDisplayWord();
  }
  void initWord(String currentWord){
    this.currentWord = currentWord.split('');//toLowerCase();
    //wordLength = this.currentWord.length;
    initDisplayWord();
  }
  bool checkChar(character){
    return currentWord.contains(character);
  }
  void addChar(character){
    //guessedChars.add(character);
    //if(currentWord.contains(character)){
    for (int i = 0; i < currentWord.length; i++){
      if(currentWord[i] == character){
        displayWord[i] = character;
      }
    }
  }
  void initDisplayWord(){
    List<String> displayWord = [];
    for (String char in currentWord){
      displayWord.add('_');
    }
    this.displayWord = displayWord;
  }

  void display(){
    print(displayWord.join(" "));
  }
  bool checkMatch(){
    //print(displayWord);
    //print(currentWord);
    return displayWord.join('') == currentWord.join('');
  }
  void reset(){
    currentWord = [];
    displayWord = [];
  }
}