import 'package:flutter/material.dart';
import 'package:flutter_application_1/Entities/registro.dart';
import 'package:flutter_application_1/domain/firebase_connection.dart';


class CallFirebase extends StatefulWidget {
  const CallFirebase ({Key? key}) : super(key: key);
  @override
  State<CallFirebase> createState() => _CallFirebaseState();
}


void openAlertDialog(BuildContext context, String info){
    AlertDialog alert = AlertDialog(
      title:  Text(info),
      content: Text(info),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Close"))
      ],
    );
    showDialog(context: context, builder: (BuildContext context)=>alert);
  }

class _CallFirebaseState extends State<CallFirebase> {
  final firebaseConnection =  FirebaseConnection();
  List<Registros> pice = [];
  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Onepiece Car"),
        centerTitle: true,
      ),
      body: Center(
        child: _createList(),
      ),
    );
  }
  Widget _createList() {
    return ListView.builder(
      itemCount: pice.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(pice[index].image!),
          ),
          title: Text('${pice[index].nombre!} ${pice[index].apellido!}'),
          onTap: () {
            openAlertDialog(context, pice[index].carro.toString());
          },
        );
      },
    );
  }

  void callDatabase() async {
    final res = await firebaseConnection.getRegisters();
    if(pice.length == 0) {
    setState(( ) {
      pice=res.registros!;
    });
  }
}
}


class CardCustom extends StatelessWidget{
  const CardCustom ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Card(
        elevation: 2,
        color: Color.fromARGB(232, 151, 143, 143),
        child: SizedBox(
                              width: 370,
                              height:120,
                              child: Center(child: Text('Clean Car'))),
      )
    );
  }

}