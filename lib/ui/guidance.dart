import 'package:flutter/material.dart';
import 'package:guruji/ui/conversation.dart';
import 'package:guruji/ui/homepage.dart';
import 'package:guruji/ui/profile.dart';

class GuidanceScreen extends StatefulWidget {
  const GuidanceScreen({super.key});

  @override
  State<GuidanceScreen> createState() => _GuidanceScreenState();
}

class _GuidanceScreenState extends State<GuidanceScreen> {
  int _currentSelected = 1;

  void _onItemTapped(int index) async {
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GuidanceScreen()));
      setState(() {
        _currentSelected = index;
      });
    }

    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      setState(() {
        _currentSelected = index;
      });
    }
    if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ConversationScreen()));
      setState(() {
        _currentSelected = index;
      });
    }
    if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProfilePgae()));
      setState(() {
        _currentSelected = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: <Widget>[
              TabBar(
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Explore",
                  ),
                  Tab(
                    text: "Guidance Q&A",
                  ),
                  Tab(
                    text: "Live Sessions",
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    ListView.builder(itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: screenHeight / 6,
                          width: screenWidth / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/live guruji/DELHI.jpg"),
                                fit: BoxFit.cover),
                            // gradient: const LinearGradient(
                            //   begin: Alignment.topRight,
                            //   end: Alignment.bottomLeft,
                            //   colors: [
                            //     Colors.blue,
                            //     Colors.red,
                            //   ],
                            // ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 15, 8, 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 10, 0),
                                      child: CircleAvatar(
                                        radius: 40,
                                        backgroundImage: AssetImage(
                                            "assets/remaining/1654671737698.jpg"),
                                      ),
                                    ),
                                    // const Text(
                                    //   "PLAYBACK",
                                    //   style: TextStyle(
                                    //       color: Colors.white, fontSize: 11),
                                    // ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "AAPKA JIVANSATHI ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          " KAISA RAHEGA",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " ON 28TH OCT AT 10AM (IST)",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 165, 150, 17),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    // Image.asset(
                                    //   "assets/live guruji/1f525.png",
                                    //   height: 15,
                                    //   width: 15,
                                    // ),
                                    // const SizedBox(
                                    //   width: 5,
                                    // ),
                                    // const Text("5"),
                                    // const SizedBox(
                                    //   width: 20,
                                    // ),
                                    // Image.asset(
                                    //   "assets/astrology/Group 24@3x.png",
                                    //   height: 20,
                                    //   width: 20,
                                    // ),
                                    // const Text("5"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    left: Radius.circular(20),
                                                    right: Radius.circular(15)),
                                            border: Border.all(
                                                width: 1, color: Colors.grey)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Share",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          // color: LinearGradient(colors: ),
                        ),
                      );
                    })
                  ],
                ),
              ),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: _onItemTapped,
                currentIndex: _currentSelected,
                showUnselectedLabels: true,
                unselectedItemColor: Colors.grey[800],
                selectedItemColor: const Color.fromRGBO(10, 135, 255, 1),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: ImageIcon(AssetImage("assets/live guruji/home.png"),
                        color: Color(0xFF3A5A98), size: 20),
                  ),
                  BottomNavigationBarItem(
                    label: 'Guidance',
                    icon: ImageIcon(
                        AssetImage("assets/live guruji/guidence.png"),
                        color: Color(0xFF3A5A98),
                        size: 20),
                  ),
                  BottomNavigationBarItem(
                    label: 'Chat',
                    icon: ImageIcon(AssetImage("assets/live guruji/chat.png"),
                        color: Color(0xFF3A5A98), size: 20),
                  ),
                  BottomNavigationBarItem(
                    label: 'Me',
                    icon: ImageIcon(
                        AssetImage("assets/live guruji/profile.png"),
                        color: Color(0xFF3A5A98),
                        size: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
