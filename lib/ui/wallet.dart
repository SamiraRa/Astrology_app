import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.clear),
                )
              ],
            ),
            Expanded(
                flex: 2, child: Image.asset("assets/live guruji/guruji.png")),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: "Phone Number",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Flexible(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  fixedSize: Size(screenWidth, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Send OTP",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 1,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("OR"),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 1,
                  ),
                ),
              ],
            ),
            Flexible(
              child: OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenWidth, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/live guruji/search-1.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Join with Google",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenWidth, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/live guruji/facebook-1.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Join with Facebook",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.check_circle_rounded,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "By joining GURUJI, you agree to our",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Terms of Service",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
