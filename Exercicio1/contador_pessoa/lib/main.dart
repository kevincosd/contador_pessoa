
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}



class _ContadorState extends State<Contador> {
int count = 0 ;

void decrement(){
    setState((
  ) {
      count --;
      if (count <0)
      {
        count = 0;
      }
    }); 
    print(count);
}



void increment(){
    setState((

    ) {
      count ++;
      if (count >=30)
      {
        count = 30;

      }
    });
    
    print(count);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/restaurant.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [


         


          Text (
            "Pode Entrar!",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
           Padding(
            padding: const EdgeInsets.all(40),
            child: Text(count.toString(),
            style: const TextStyle(fontSize: 100,color: Colors.white)),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton(
              onPressed: increment,
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                fixedSize: Size(100,50)
                ),
              child: Text("Entrou", style: TextStyle(fontSize: 22, color: Colors.black)),
            ),


            TextButton(
              onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                fixedSize: Size(100,50)
                ),
              child: Text("Saiu", style: TextStyle(fontSize: 22, color: Colors.black)),
            )


          ],
          )
        ],
      )
    ));
  }
}