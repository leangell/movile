import 'package:flutter/material.dart';

class ImagenLeo extends StatelessWidget {
  const ImagenLeo({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(223, 52, 46, 46),
          title: const Text('Home'),
        ),
        body:  Center( child: Stack(children: [
          Image.asset('assets/images/ca_va.png'),
        ],)
        
        )
        );
    
  }


}