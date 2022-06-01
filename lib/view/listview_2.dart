import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {


  ListView2({Key? key}) : super(key: key);
final List<Map<String, dynamic>> _games = [
  {
    "image": 'https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png',
    "name": 'Roblox',
  },
  {
    "image": 'https://articles-images.sftcdn.net/wp-content/uploads/sites/2/2015/10/silent1.jpg',
    "name": 'Silent Hills',
  },
  {
    "image": 'https://media.vandal.net/i/1200x630/11-2021/2021111012201145_1.jpg',
    "name": 'Forza Horizon 5',
  },
  {
    "image": 'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
    "name": 'Halo Infinite',
  },
  {
    "image": 'https://image.api.playstation.com/cdn/UP9000/CUSA02522_00/o9zJoXqpd4lzarjIbvvZLFjYGLsLvqCp.png',
    "name": 'Jack and Dexter',
  },
  {
    "image": 'https://articles-images.sftcdn.net/wp-content/uploads/sites/2/2015/10/silent1.jpg',
    "name": 'Silent Hills',
  },
  {
    "image": 'https://media.vandal.net/i/1200x630/11-2021/2021111012201145_1.jpg',
    "name": 'Forza Horizon 5',
  },
  {
    "image": 'https://data3.origin.com/content/dam/originx/web/app/games/need-for-speed/need-for-speed/screenshots/nfs-16/NFSspeedlists1_screenhi_930x524_en_US.jpg',
    "name": 'Need for speed',
  },
];
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
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const  Text("Videos Juegos")
      ),
      body: ListView.builder(
        itemCount: _games.length,
        itemBuilder: (_, index){
          return  ListTile(
            leading: CircleAvatar(
              backgroundImage: Image.network(_games[index]["image"]).image,
            ),
            title: Text(_games[index]["name"]!),
            onTap: (){
              openAlertDialog(context, _games[index]["name"]);
            }
          );
        }));
  }
}