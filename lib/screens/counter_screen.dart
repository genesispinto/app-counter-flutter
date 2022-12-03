import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

 int counter =0;

 void increase(){
  counter ++;
  setState(() {});
 }

 void decrease(){
  counter --;
  setState(() {});
 }

  void clear(){
  counter =0;
  setState(() {});
 }
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
   

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CounterScreen')),
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
     
      floatingActionButton: CustomFloatingAction(
        fnIncrease: increase,
        fnDecrease: decrease,
        fnClear: clear,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomFloatingAction extends StatelessWidget {

  final Function fnIncrease;
  final Function fnDecrease;
  final Function fnClear;

  const CustomFloatingAction({
    Key? key, 
    required this.fnIncrease, 
    required this.fnDecrease, required this.fnClear, 
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:  [
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => fnIncrease(),
         ),

        FloatingActionButton(
          child: const Icon(Icons.clear),
            onPressed: () => fnClear(),
         ),

          FloatingActionButton(
            child: const Icon(Icons.remove),
              onPressed: () => fnDecrease(),
         ),
          
    ],
    );
  }
}
