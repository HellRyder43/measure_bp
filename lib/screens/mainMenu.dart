import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 0) {
        Navigator.of(context).pushNamed('/mainmenu');
      } else if (index == 1) {
        Navigator.of(context).pushNamed('/history');
      } else if (index == 2) {
        Navigator.of(context).pushNamed('/profile');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            bodyContent,
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/indexFinger.png'),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: Text("1. Lightly place your index finger on the rear camera",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(
                    child: Text("2. Make sure the camera is fully covered",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(
                    child: Text("3. Measure in a shaded environment",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(
                    child: Text("4. Don't move your finger until the measurement is complete",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(
                    child: Text("5. Finally place your finger then press start",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 40,
                    width: 100,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: Center(
                        child: Text(
                          "Start",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: bottomNavigationBar,
            ),
          ],
        ),
      ),
    );
  }

  Widget get bodyContent {
    return Container(
      color: Colors.white,
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(28),
        topLeft: Radius.circular(28),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text('Measure')),
          BottomNavigationBarItem(icon: Icon(Icons.history), title: Text('History')),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text('Profile')),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black26,
        onTap: _onItemTapped,
      ),
    );
  }
}
