import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     leading: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Padding(
      //     padding: const EdgeInsets.(8.0),
      //     child: Container(
      //       width: 80,
      //       height: 40,
      //       decoration: BoxDecoration(
      //          color: Colors.amber,
      //          borderRadius: BorderRadius.circular(150),
      //          shape:BoxShape.rectangle),

      //       child: Card(
      //           // shape: RoundedRectangleBorder(
      //           //     borderRadius: BorderRadius.circular(15.0))
      //               ),
      //     ),
      //   ),
      // )),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
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
            ],
          )
        ],
      )),
    );
  }
}
