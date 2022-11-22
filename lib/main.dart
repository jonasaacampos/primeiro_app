import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

var imageQatarDoha =
    'https://upload.wikimedia.org/wikipedia/commons/8/8d/IslamicArtMuseumDohaSkyline.jpg';

var styleTitle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
var styleSubTitle = TextStyle(fontSize: 14, color: Colors.grey);
var colorButtons = Colors.blue;

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'X Congresso da Xpto.corp',
            textAlign: TextAlign.center,
          )),
          body: Column(
            children: [
              Image(
                  image: AssetImage('assets/IslamicArtMuseumDohaSkyline.jpg')),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qatar',
                          style: styleTitle,
                        ),
                        Text(
                          'Doha Museum, Doha.',
                          style: styleSubTitle,
                        )
                      ],
                    )),
                    Row(
                      children: [
                        Icon(Icons.star, color: colorButtons),
                        Text('9.886')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Botao(
                          icon: Icons.messenger,
                          text: 'mensagem',
                          onPress: () {}),
                      Botao(
                          icon: Icons.location_city,
                          text: 'como chegar',
                          onPress: () {}),
                      Botao(
                          icon: Icons.share,
                          text: 'compartilhar',
                          onPress: () {}),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                      'A cidade de Doha foi formada a partir de outro assentamento local conhecido como Al-Bida. A mais antiga menção documentada de Al-Bida foi feita em 1681, pelo Convento Carmelita, em um relato que narra vários assentamentos no Catar'))
            ],
          )),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({required this.onPress, required this.icon, required this.text});

  Function onPress = () {};
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: onPress(),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: colorButtons,
                ),
                Text(text)
              ],
            )));
  }
}
