import 'package:flutter/material.dart';
import 'package:my_app1/screens/counter_screen.dart';
//import 'package:my_app1/screens/home_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: HomeScreen()
    home: CounterScreen()
   );
  }

}