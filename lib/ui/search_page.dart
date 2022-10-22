import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchCOntroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_sharp),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: screenHeight / 13,
                      width: screenWidth,
                      color: Color.fromARGB(137, 248, 241, 241),
                      child: TextField(
                        controller: searchCOntroller,
                        decoration: InputDecoration(
                          hintText: "Search the name of astrologer",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight / 5,
                      width: screenWidth / 3,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 202, 202, 202)),
                        color: const Color.fromARGB(255, 247, 244, 244),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                                height: screenHeight / 4.5,
                                width: screenWidth / 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                                child: const Icon(
                                  Icons.access_time_filled_sharp,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Connected \nastrologers",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      height: screenHeight / 5,
                      width: screenWidth / 3,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 202, 202, 202)),
                        color: const Color.fromARGB(255, 247, 244, 244),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: screenHeight / 4.5,
                              width: screenWidth / 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 223, 39, 140)),
                              child: Image.asset(
                                "assets/live guruji/order history@2x.png",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Order",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "History(1 on 1)",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight / 5,
                      width: screenWidth / 3,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 202, 202, 202)),
                        color: const Color.fromARGB(255, 247, 244, 244),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: screenHeight / 4.5,
                              width: screenWidth / 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:
                                      const Color.fromARGB(255, 236, 100, 9)),
                              child: Image.asset(
                                "assets/live guruji/customer service@2x.png",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Customer Service",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
