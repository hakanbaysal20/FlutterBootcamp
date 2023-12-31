import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({Key? key}) : super(key: key);

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonuç Ekranı"),),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Geri dön")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst); // 1. sayfaya kadar geri dön demek
            }, child: const Text("Anasayfaya geri dön")),
          ],
        ),
      ),

    );
  }
}
