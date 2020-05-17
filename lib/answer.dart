import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
    
     height: 90,
      margin: EdgeInsets.all(10),
      width: double.infinity,
      
      child: RaisedButton(
        
        color: Colors.green,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      
      ),
    );
  }
}
