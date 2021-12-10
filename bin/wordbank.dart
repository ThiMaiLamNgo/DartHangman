import 'dart:io';
class WordBank{
  List<String> words;
  //int wordIndex = 0;

  //File wordFile;
  //String filename;
  WordBank(filename){//'./bin/words.txt' eða filename
    //this.wordFile = File(this.filename).readAsLines()
    //print(Directory.current);
    words = File('./bin/words.txt').readAsLinesSync();
    //shuffle the list of words
    words.shuffle();
  }

  String getWord(){
    //its is ok to always fetch the first word
    //as the list is never the same (random)
    String word = words[0];
    //remove word from list once it has been used
    words.removeAt(0);
    return word;
  }
}

  /*
void main(){
  String a = 'abcd';
  print('Enter a char: ');
  String b = stdin.readLineSync().toLowerCase();
  print(a.split(''));
  for (b in a){
    if (b in a) {
      print('Enter another char');
    } else  {
      print(b);}
  }

  }


}
/*
for (int i= 0; i < a.length; i ++){
    if (b == a[i]){
      print(b);
    } else  if (b != a[i]){
    print('Enter another char');
    }
  }
*/

 */