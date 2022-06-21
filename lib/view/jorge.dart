import 'package:flutter/material.dart';

class ListView22 extends StatelessWidget {
  const ListView22({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _games = const [
    {
      "image":
          'https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png',
      "name": 'Roblox',
    },
    {
      "image":
          'https://articles-images.sftcdn.net/wp-content/uploads/sites/2/2015/10/silent1.jpg',
      "name": 'Silent Hills',
    },
    {
      "image":
          'https://media.vandal.net/i/1200x630/11-2021/2021111012201145_1.jpg',
      "name": 'Forza Horizon 5',
    },
    {
      "image":
          'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
      "name": 'Halo Infinite',
    },
  ];

  void openAlertDialog(BuildContext context, String info) {
    AlertDialog alert =
        AlertDialog(title: Text(info), content: Text(info), actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('OK'),
      )
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zetien's Favorite Games"),
        centerTitle: true,
      ),
      body: Center(
        child: _createList(),
      ),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _games.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(_games[index]);
      },
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(Map<String, dynamic> _games, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(15),
        elevation: 10,

        child: Column(
          children: <Widget>[
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Titulo'),
              subtitle: Text(
                  'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
              leading: Icon(Icons.home),
            ),
            
            // Usamos una fila para ordenar los botones del card
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(onPressed: () => {}, child: const Text('Aceptar')),
                FlatButton(onPressed: () => {}, child: const Text('Cancelar'))
              ],
            )
          ],
        ),
      )
      /* Card(
        elevation: 2,
        color: Color.fromARGB(232, 95, 146, 213),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: SizedBox(
          height: 120,
          width: 360,
          child: Center(child: Text('Clean Card')),
        ),
      ), */
    );
  }
}


