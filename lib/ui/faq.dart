import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQs"),
        backgroundColor: const Color.fromARGB(239, 42, 44, 48),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 235, 230, 230),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/mobile app@2x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Mobile Application",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 117, 116, 116),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/solar-system (1)@2x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Astrologers",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                                Text(
                                  "Related",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/recharge@2x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Recharge and",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                                Text(
                                  "Refund Processes",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/share (1)@3x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Referral Code",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 117, 116, 116),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/live@2x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Live Streaming",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                                Text(
                                  "Related",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/video call@2x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Video Call",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 117, 116, 116),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              //=============================================================================================================================================
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight / 5.2,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 244, 244),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                child: Image.asset(
                                  "assets/live guruji/vip@2x.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Guruji+",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                                Text(
                                  "Membership",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: Size(screenWidth, screenHeight / 12)),
          child: const Text("Message Us")),
    );
  }
}
