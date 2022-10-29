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
                    // Icon(Icons.directions_transit),

                    //=====================================================================================================================================================
                    //=====================================================================================================================================================
                    //=================================================Guidance Q&A==========================================================================
                    //=====================================================================================================================================================
                    //=====================================================================================================================================================
                    ListView.builder(itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height: screenHeight / 6,
                          // width: screenWidth / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),

                            // gradient: const LinearGradient(
                            //   begin: Alignment.topRight,
                            //   end: Alignment.bottomLeft,
                            //   colors: [
                            //     Colors.blue,
                            //     Colors.red,
                            //   ],
                            // ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                          "assets/remaining/1654671737698.jpg"),
                                    ),
                                  ),
                                  Text("User***"),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/live guruji/Repeat Grid 2@2x.png",
                                      color: Colors.black,
                                      height: 20,
                                      width: 20,
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(
                                    "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                              ),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Click  to read the full article",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                                child: Text("2 hours ago"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        25, 10, 10, 10),
                                    child: Image.asset(
                                      "assets/live guruji/heart.png",
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        25, 10, 10, 10),
                                    child: Image.asset(
                                      "assets/live guruji/comment-1.png",
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        25, 10, 10, 10),
                                    child: Image.asset(
                                      "assets/live guruji/share-1.png",
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          // color: LinearGradient(colors: ),
                        ),
                      );
                    }),
                    //=====================================================================================================================================================
                    //=====================================================================================================================================================
                    //=================================================Live Sessions==========================================================================
                    //=====================================================================================================================================================
                    //=====================================================================================================================================================
                    ListView.builder(itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: screenHeight / 5.1,
                          width: screenWidth / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
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
                                                const BorderRadius.horizontal(
                                                    left: Radius.circular(20),
                                                    right: Radius.circular(15)),
                                            border: Border.all(
                                                width: 1, color: Colors.grey)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
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
