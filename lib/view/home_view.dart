import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: ,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(224, 243, 186, 186),
          title: const Text('Home'),
        ),
        body: const Center(child: Text("This is the Home CAR IV"),
        
        )
        );
    
  }


}