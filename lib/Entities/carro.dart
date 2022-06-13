class Carro {
  final String? Color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Carro({this.Color, this.marca, this.modelo, this.placa});

  factory Carro.fromJson(Map<String, dynamic> json) {
    return Carro(
      Color: json['Color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    );
  }
  @override
  String toString() {
    return 'Carro color: $Color, modelo: $modelo, placa: $placa, marca: $marca';
  }

/*   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['marca'] = this.marca;
    data['modelo'] = this.modelo;
    data['placa'] = this.placa;
    return data;
  } */

}