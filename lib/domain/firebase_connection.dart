import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

import '../Entities/response_firebase.dart';

class FirebaseConnection {

  //devuelve la instancia de la base de datos
    static final FirebaseDatabase _database = FirebaseDatabase.instance;

    DatabaseReference instanceFirebase(){
      return _database.ref('/Registros');
    }

   /*  void getAllRegistros() {
        DatabaseReference _registros = instanceFirebase();
        _registros.onValue.listen((event) {
          final registros = event.snapshot.value;
          Map<String, dynamic> registrosJson = json.decode(registros.toString());
          print(registrosJson);
          ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
          print(reg);
        });
        } */

        Future<ResponseFirebase>getRegisters() async {
            try{
              DatabaseReference _registros= instanceFirebase();
              DataSnapshot response = await _registros.get();
              final codific = json.encode(response.value);
              final decodific = json.decode(codific);
              final registers = ResponseFirebase.fromJson(decodific.values.toList());
              return registers;
            }
            catch(e){
              rethrow;
            }  
        }
  
  }