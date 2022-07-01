import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Widget Card'),
      ),
      body: Container(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyCardWidget(meuIcone: Icons.local_movies, meuTexto: "Filme"),
            MyCardWidget(meuIcone: Icons.music_video, meuTexto: "OST"),
          ],
        ),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  // const MyCardWidget({Key? key, IconData? meuIcone}) : super(key: key);

  final IconData? meuIcone;
  final String? meuTexto;

  MyCardWidget({this.meuIcone, this.meuTexto});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(meuIcone, size: 40.0, color: Colors.grey),
              title: Text(meuTexto.toString(),
                  style: const TextStyle(fontSize: 20.0)),
              subtitle:
                  const Text('VINGADORES: ULTIMATO - 2019, Marvel Comics DC.'),
            ),
            ButtonTheme(
                child: ButtonBar(
              children: [
                FlatButton(
                  child: const Text('Votar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text('Sinopse'),
                  onPressed: () {},
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
