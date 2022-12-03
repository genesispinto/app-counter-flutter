import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    int counter =0;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        elevation: 10.3,
        backgroundColor: Colors.black26,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numeros de Clicks',style: fontSize30) ,
            Text('$counter',style: fontSize30),
            ],
          ),
      ),
     
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () { 
          counter ++;
          print('Hola Mundo: $counter');
          
         },
         ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}