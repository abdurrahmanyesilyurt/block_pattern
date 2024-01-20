import 'package:bloc_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class anasayfa extends StatefulWidget {

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {

  var tfSayi1=TextEditingController();
  var tfSayi2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Kullanimi"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<anasayfa_cubit,int>(
              builder: (context,sonuc){
                return  Text(sonuc.toString(),style: const TextStyle(fontSize: 30),);
              },

            ),

            TextField(controller: tfSayi1,decoration: InputDecoration(hintText: "Sayi 1"),),
            TextField(controller: tfSayi2,decoration: InputDecoration(hintText: "Sayi 2"),),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  String alinanSayi1=tfSayi1.text;
                  String alinanSayi2=tfSayi2.text;
                  context.read<anasayfa_cubit>().toplamaYap(alinanSayi1, alinanSayi2);
                },child: const Text("TOPLAMA"),),
                ElevatedButton(onPressed: (){
                  String alinanSayi1=tfSayi1.text;
                  String alinanSayi2=tfSayi2.text;
                  context.read<anasayfa_cubit>().carpmaYap(alinanSayi1, alinanSayi2);
                },child: const Text("ÇARPMA"),),
              ],
            ),

          ],
          ),
        ),
      ),
    );
  }
}
