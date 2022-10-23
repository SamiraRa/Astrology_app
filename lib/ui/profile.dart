import 'package:flutter/material.dart';
import 'package:guruji/ui/faq.dart';
import 'package:guruji/ui/homepage.dart';
import 'package:guruji/ui/wallet.dart';

class ProfilePgae extends StatefulWidget {
  const ProfilePgae({super.key});

  @override
  State<ProfilePgae> createState() => _ProfilePgaeState();
}

class _ProfilePgaeState extends State<ProfilePgae> {
  int _currentSelected = 3;

  void _onItemTapped(int index) async {
    if (index == 1) {
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 50, 40, 0),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage("assets/remaining/1654671737698.jpg"),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Have a nice day",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),

                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                const SizedBox(
                  height: 30,
                ),
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/balance.png",
                              color: Color.fromARGB(255, 116, 29, 131),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Balance",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Text(
                                  "***",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/following.png",
                              color: Color.fromARGB(255, 116, 29, 131),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Following",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Text(
                                  "***",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/coupon.png",
                              color: Color.fromARGB(255, 116, 29, 131),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Coupon",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Text(
                                  "***",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================

                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WalletScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(screenWidth, screenHeight / 16),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Log in / SIgn up",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),

                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================

                const SizedBox(
                  height: 25,
                ),
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/orders.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Balance",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/live orders.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Live Orders",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/live guruji/video report.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Video Report",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WalletScreen()));
                        },
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/live guruji/birth chart.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Birth Chart",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================

                const SizedBox(
                  height: 30,
                ),

                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/live guruji/contact us.png",
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Contact Us",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => WalletScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/live guruji/follow ua.png",
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Follow Us",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================

                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 1,
                ),
                const SizedBox(
                  height: 30,
                ),
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================
                //==================================================================================================================================================

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FaqScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/live guruji/faq.png",
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "FAQ",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/live guruji/setting.png",
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Settings",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 1,
                ),
                const SizedBox(
                  height: 50,
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
        ));
  }
}
