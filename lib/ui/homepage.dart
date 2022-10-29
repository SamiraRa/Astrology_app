import 'package:flutter/material.dart';
import 'package:guruji/ui/conversation.dart';
import 'package:guruji/ui/faq.dart';
import 'package:guruji/ui/guidance.dart';
import 'package:guruji/ui/profile.dart';
import 'package:guruji/ui/search_page.dart';
import 'package:guruji/ui/verification.dart';
import 'package:guruji/ui/wallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelected = 0;
  var exp = "10+ years";
  var lang = "English,Hindi";
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

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */
              //************************************** AppBar************************************************************************* */
              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),

                  //=====================================================================================================================================
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WalletScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      backgroundColor: const Color.fromRGBO(243, 221, 94, 1),
                      fixedSize: (const Size(80, 5)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(150),
                            // ),
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                  color: Colors.black,
                                  // height: 14,
                                  // width: 14,
                                  "assets/live guruji/balance.png"),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "***",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  //=====================================================================================================================================
                  //=====================================================================================================================================

                  const Spacer(),

                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchScreen()));
                    },
                    icon: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FaqScreen()));
                    },
                    icon: const Icon(
                      Icons.support_agent,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          // barrierDismissible: false,
                          builder: (BuildContext context) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Change language?",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            );
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        "assets/live guruji/en.png",
                        color: Colors.black,
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  )
                ],
              ),

              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */
              //**************************************Below AppBar************************************************************************* */
              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Explore",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            // Icon(Icons.tarot),
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Tarot",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            // Icon(Icons.tarot),
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Love",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Marriage",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Carrer",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Life",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Health",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/explore.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Ayurveda",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */
              //**************************************Live Session************************************************************************* */
              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "LIVE Sessions",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: screenHeight / 6,
                      width: screenWidth / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue,
                            Colors.red,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 80, 8, 8),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                    "assets/remaining/1654671737698.jpg"),
                              ),
                            ),
                            const Text(
                              "PLAYBACK",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Image.asset(
                              "assets/live guruji/1f525.png",
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("5"),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/astrology/Group 24@3x.png",
                              height: 20,
                              width: 20,
                            ),
                            const Text("5"),
                          ],
                        ),
                      ),
                      // color: LinearGradient(colors: ),
                    )
                  ],
                ),
              ),
              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */
              //**************************************Live Session************************************************************************* */
              //*************************************************************************************************************************************************** */
              //*************************************************************************************************************************************************** */
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Draggable(
              //     data: 'Flutter',
              //     feedback: IconButton(
              //         onPressed: () {},
              //         icon: Image.asset("assets/live guruji/support.png")),
              //     childWhenDragging: Container(),
              //     child: IconButton(
              //         onPressed: () {},
              //         icon: Image.asset("assets/live guruji/support.png")),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                child: Row(
                  children: [
                    const Text("Astrologers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                    const Spacer(),
                    Container(
                      // margin: EdgeInsets.all(20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Image.asset(
                        "assets/live guruji/filter-1.png",
                        width: 16,
                        height: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight / 1.3,
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250,
                              childAspectRatio: 1.1 / 2.2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      itemCount: 11,
                      itemBuilder: (BuildContext ctx, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  width: screenWidth,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/live guruji/DELHI.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(40.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                          "assets/remaining/1654671737698.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 3, 3, 3),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.purple,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "4.5",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "Tarot Queen Madhu",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        "Exp: $exp",
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "$lang",
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "\$1.82",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              "/min",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/live guruji/chat-1.png",
                                            height: 10,
                                            width: 10,
                                            color: Colors.grey,
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.green,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: ImageIcon(AssetImage("assets/live guruji/guidence.png"),
                color: Color(0xFF3A5A98), size: 20),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: ImageIcon(AssetImage("assets/live guruji/chat.png"),
                color: Color(0xFF3A5A98), size: 20),
          ),
          BottomNavigationBarItem(
            label: 'Me',
            icon: ImageIcon(AssetImage("assets/live guruji/profile.png"),
                color: Color(0xFF3A5A98), size: 20),
          ),
        ],
      ),
    );
  }
}
