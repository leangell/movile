import 'package:flutter/material.dart';
class Conttador extends StatefulWidget {
  const Conttador({Key? key}) : super(key: key);

  @override
  State<Conttador> createState() => _ConttadorState();
}

class _ConttadorState extends State<Conttador> {
  int count = 0 ;
  void increasefn() {
    count++;
    setState(( ) {});
  }
  void decreasefn() {
    count--;
    setState(( ) {});
  }
  void recetfn() {
    count = 0;
    setState(( ) {});
  }
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
        
        floatingActionButton:floatingCustomw(
          increasefn: increasefn,
          decreasefn: decreasefn,
          recetfn: recetfn
        ) 
        
        
        ); 
  }
}

class floatingCustomw extends StatelessWidget {
  final Function increasefn;
  final Function decreasefn;
  final Function recetfn;
  const floatingCustomw({
    Key? key,
    required this.increasefn,
    required this.decreasefn,
    required this.recetfn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton( child: const Icon(Icons.add), onPressed:()=> increasefn()),
        FloatingActionButton(child: const Icon(Icons.replay), onPressed:() => recetfn()),
        FloatingActionButton(child: const Icon(Icons.remove), onPressed:() => decreasefn()),
      ]
    );
  }
}

