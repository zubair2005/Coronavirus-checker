import 'package:flutter/material.dart';



class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText ;
    if (resultScore <= 8) {
     
      resultText = 'You are healthy so remain following goverment guidelines!';
    
    } else if (resultScore <= 12) {
      resultText = 'You may have the virus so take precautions';
    } else if (resultScore <= 16) {
      resultText = 'Please remain wary and seek immediate help if symptoms worsen';
    } else {
      resultText = 'You are in a high risk group please seek immediate help ';
    
    }
    return resultText ;
  }

  @override
  Widget build(BuildContext context) {
    
    
    
     
      
      
      

    
    
    
    return Scaffold(
      
      backgroundColor: Colors.white,
    
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment:  CrossAxisAlignment.center,
        children: <Widget>[
    
    
   
       FloatingActionButton(
            
            elevation: 0,
            child: IconButton(
            icon: Icon(Icons.warning),
           iconSize: 25,
           
            ),
           backgroundColor: Colors.red,
            onPressed: null,
           
    
 
          ),
        
        Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),
            textAlign: TextAlign.center,
            
          ),
       
        FloatingActionButton(
            
            elevation: 0,
            child: IconButton(
            icon: Icon(Icons.refresh),
           iconSize: 25,
           color: Color.fromARGB(0, 0, 0, 0),
            ),
           backgroundColor: Colors.white,
            onPressed: resetHandler,
           shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  
  ),
          ),
        Image(image: AssetImage('assets/images/health.png'),height: 522,width: 500,alignment: AlignmentDirectional.bottomCenter,),
        ],
      ),
    );
    
  }
}
