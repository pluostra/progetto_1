import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  _Home createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context); //riga 73 nel child Text theme non avrebbe funzionato, ho definito oggetto
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },

        indicatorColor: Colors.blueGrey,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.newspaper_outlined),
            icon: Icon(Icons.newspaper_outlined),
            label: 'Novità',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_sharp),
            label: "Eventi",
          ),
          NavigationDestination(
            icon: Icon(Icons.more_vert_sharp),
            label: 'Altro',
          ),
        ],
      ),
      body: <Widget>[
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(50.0),
          child: SizedBox.expand(
            child: Center(
              child: Text('Novità', style: theme.textTheme.titleLarge),
            ),
          ),
        ),
        Card(
          shadowColor: Colors.black,
          margin: const EdgeInsets.all(50.0),
          child: SizedBox.expand(
            child: Center(
              child: Container(
                color: Colors.lightBlue,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        shadowColor: Colors.black,
                        margin: const EdgeInsets.all(80.0),
                      child: Center(
                      child: Text('Events', style: theme.textTheme.titleLarge),
                      ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(50.0),
          child: SizedBox.expand(
            child: Center(
              child: Text('Altro', style: theme.textTheme.titleLarge),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}