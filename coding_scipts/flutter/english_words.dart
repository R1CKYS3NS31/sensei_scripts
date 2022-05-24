import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english/english_words.dart';

import 'helloricky.dart';

class RandomWords extends statefullWidget{
  @override
  _RandomWordsState createState()=>_RandomWordsState();

}
class _RandomWordsState extends state<RandomWords>{
  @override
  widget build(BuildiContext context){
    
    final wordPair=WordPair.random();
    return Text(wordPair.asPascalCase);
    final _suggestions=<WordPair>[];
    final _biggerFont = TextStyle(fontSize:18.0);


    Widget _buildSuggestions(){
      return ListView.builder(
        padding:EdgeInsets.all(16.0),
        itemBuilder: (context,i){
          if (i.isOdd) return Divider();
          final index=i ~/2;
          if(index>=_suggestion.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
      );
    
    }
    Widget BuildRow(wordPair pair){
      return ListTile(
        title:Text(
          pair.asPascalCase,
          style:_biggerFont,
        ),
      );
    }
    return Scaffold(
      appBar:AppBar(
        title:Text("startup name generator"),
      ),
    body: _buildSuggestions(),
    );


  }
}

void main() => runApp(MyApp());

class myApp extends statelessWidget {
  @override
  Widget build(BuildContext context) {
    final WordPair.random();

    return MaterialApp(
      title: "English words",
      home: Scaffold(
        title: "startup name Generator",
        home:RandomWords(),
        appBar: AppBar(
          title:Text("English words"),
        ),
        body:Center(
          child:RandomWords(),
          
        ),
      ),
    );
  }
}
 //dependencies:
 //   flutter:
//      sdk: flutter
//    cupertino_icons: ^0.1.2
//+   english_words: ^3.1.5 