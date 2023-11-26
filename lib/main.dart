import 'package:flutter/material.dart';

void main() {
  runApp(
  const MaterialApp( //widget
    debugShowCheckedModeBanner: false, //remove banned for debugging
    home: HomePage(), //stateful widget (have things that will change)
  )
  );
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("VegiConnect"),
        actions: <Widget>[ //propery
          IconButton( icon: const  Icon(Icons.search, color: Colors.white,),onPressed: (){} ),
          IconButton( icon: const Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){})

        ],
      ),
    drawer:  Drawer( //parent
      child: ListView( //unique
        children: const <Widget>[ //not uniques
          //header part of the drawer
          UserAccountsDrawerHeader(accountName: Text("Brian Mwirigi"), accountEmail: Text('bmmaingi17@gmail.com'))

        ],

      ),
    ),
    );
  }
}


