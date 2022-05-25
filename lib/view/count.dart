import 'package:flutter/material.dart';

class Contadors extends StatelessWidget {
  const Contadors({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const siseText =  TextStyle(fontSize: 25);
    int count = 10 ;
    return Scaffold( 
      appBar: AppBar(
          elevation: 8.0,
          backgroundColor: Color.fromARGB(223, 37, 34, 34),
          title: const Text('Countador'),
        ),
        body: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            
            children:  <Widget>[
              Text("Listo para cambiar", style:siseText ,),
              Text('$count' ,style:siseText,)
            ]
          ),
        ), 
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            count++;
            showMessage();
            },
          child: Icon(Icons.access_alarm),
        ) 
        
        
        ); 
  }
  void showMessage(){
    print('hi, Again');
  }
}

