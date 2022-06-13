

import 'package:flutter_application_1/Entities/registro.dart';

class ResponseFirebase{

  List<Registros>? registros;

  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(List<dynamic> json) {

    registros= json.map(((e) => Registros.fromJson(e))).toList();
  }
  
}