import 'package:flutter/material.dart';
import 'package:nauggets/Screens/ThirdScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 19, 50, 187),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
          ),
        ),
        body: BottomNavigationBarExample(),
    );
  }
}


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   Text(
      'Index 0: money',
      style: optionStyle,
    ),
    Text(
      'Index 1: money',
      style: optionStyle,
    ),
    Text(
      'Index 2: lock',
      style: optionStyle,
    ),
    Padding(
      padding: EdgeInsets.all(30),
      child: SizedBox(
      width: 250,
      height: 150,
      child: SizedBox(
        child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green
        ),
        
        ),
      ),
    
    ),
    
    ),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq,color: Color.fromARGB(255, 80, 80, 80)),
            label: 'Graph',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money,color: Color.fromARGB(255, 80, 80, 80)),
            label: 'money',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock,color: Color.fromARGB(255, 80, 80, 80),),
            label: 'Sequrity',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color.fromARGB(255, 80, 80, 80)),
            label: 'User',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Color.fromARGB(255, 80, 80, 80)),
            label: 'Settings',
            
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 8, 29, 53),
        onTap: _onItemTapped,
      ),
    );
  }
}
