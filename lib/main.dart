import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    //widget
    debugShowCheckedModeBanner: false, //remove banned for debugging
    home: HomePage(), //stateful widget (have things that will change)
  ));
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
        elevation: 0.1, //remove shadow
        backgroundColor: Colors.green,
        title: const Text("VegiConnect"),
        actions: <Widget>[
          //propery
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        //parent
        child: ListView(
          //unique
          children: <Widget>[
            //not uniques
            //header part of the drawer
            UserAccountsDrawerHeader(
                accountName: const Text("Brian Mwirigi"),
                accountEmail: const Text('bmmaingi17@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.green
            )
            ),

            //body of drawer
           const InkWell(
              child:  ListTile(
                title: Text("HOME PAGE"),
                leading: Icon(Icons.home),
              ),
            ),

           const InkWell(
              child:  ListTile(
                title: Text("MY ACCOUNT"),
                leading: Icon(Icons.person),
              ),
            ),

            const InkWell(
              child:  ListTile(
                title: Text("MY ORDERS"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

           const InkWell(
              child:  ListTile(
                title: Text("CATEGORIES"),
                leading: Icon(Icons.dashboard),
              ),
            ),

            const InkWell(
              child:  ListTile(
                title: Text("FAVORITE"),
                leading: Icon(Icons.favorite),
              ),
            ),

           const  Divider(), //line dividing sections

            const InkWell(
              child:  ListTile(
                title: Text("SETTINGS"),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),

            const InkWell(
              child:  ListTile(
                title: Text("ABOUT"),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
