import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  int _selectedIndex = 1;

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
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ExpansionTileCard(
                      title: Text('03 June 2020 6:31 PM',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black
                        ),
                      ),
                      subtitle: Text('Low Blood Pressure',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow
                        ),
                      ),
                      children: <Widget>[
                        Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "You have a low blood pressure. A sudden fall in blood pressure can be dangerous. "
                                        "A change of just 20 mm Hg — a drop from 110 systolic to 90 mm Hg systolic,"
                                        " for example — can cause dizziness and fainting when the brain fails to receive "
                                        "enough blood. And big drops, such as those caused by uncontrolled bleeding, "
                                        "severe infections or allergic reactions, can be life-threatening",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat'
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text(
                                    "Reading: 90/60",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceAround,
                          buttonHeight: 52.0,
                          buttonMinWidth: 90.0,
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)),
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.share, color: Colors.black,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Text('Share', style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ExpansionTileCard(
                      title: Text('04 June 2020 10:15 AM',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black
                        ),
                      ),
                      subtitle: Text('Normal Blood Pressure',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.green
                        ),
                      ),
                      children: <Widget>[
                        Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Your blood pressure is optimal, this is great news. By following our healthy living advice, you will be able to keep it this way."
                                    "If your blood pressure is above 120/80mmHg, you will need to lower it.",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text(
                                    "Reading: 120/80",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceAround,
                          buttonHeight: 52.0,
                          buttonMinWidth: 90.0,
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)),
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.share, color: Colors.black,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Text('Share', style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ExpansionTileCard(
                      title: Text('05 June 2020 3:00 PM',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black
                        ),
                      ),
                      subtitle: Text('High Blood Pressure',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),
                      ),
                      children: <Widget>[
                        Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "You have high blood pressure, this higher pressure puts extra strain on your "
                                      "heart and blood vessels. Over time, this extra strain increases your risk of "
                                        "a heart attack or stroke",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text(
                                    "Reading: 160/95",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceAround,
                          buttonHeight: 52.0,
                          buttonMinWidth: 90.0,
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)),
                              onPressed: () {},
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.share, color: Colors.black,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Text('Share', style: TextStyle(color: Colors.black),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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
