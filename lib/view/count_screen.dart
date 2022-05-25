import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 10 ;
  @override
  Widget build(BuildContext context) {
    const siseText =  TextStyle(fontSize: 25);
    
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
          child: Icon(Icons.access_alarm),
          onPressed:(){
            showMessage();
            },
        
        ) 
        
        
        ); 
  }

  void showMessage(){
   // print('hi, Again');
    setState(( ) {
      count++;
    });
  }
}

