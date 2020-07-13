import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int _selectedIndex = 2;

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
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/pakcik.jpg'),
                      radius: 70.0,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Samad Abdullah", style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Card(
                    color: Colors.white,
                    elevation: 5,
                    child: ListTile(
                      title: Text('Email', style: TextStyle(fontWeight: FontWeight.w200),),
                      subtitle: Text('samad.abd@gmail.com'),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 5,
                    child: ListTile(
                      title: Text('Password', style: TextStyle(fontWeight: FontWeight.w200),),
                      subtitle: Text('*************'),
                      trailing: Icon(Icons.edit, color: Colors.lightGreen,),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 5,
                    child: ListTile(
                      title: Text('Address', style: TextStyle(fontWeight: FontWeight.w200),),
                      subtitle: Text('Jalan Lagoon, Bandar Sunway ....'),
                      trailing: Icon(Icons.edit, color: Colors.lightGreen,),
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
