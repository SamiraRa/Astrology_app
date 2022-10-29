import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:guruji/ui/verification.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});
  static String verify = "";
  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  var phone;
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                Image.asset(
                  "assets/live guruji/guruji.png",
                  height: 200,
                  width: 200,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: TextField(
                    controller: phoneController,
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '$phone',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        WalletScreen.verify = verificationId;
                        //  WalletScreen.verify;
                        print("verification Id ashbe${WalletScreen.verify}");
                        Navigator.pushNamed(context, "/verify");
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        phone == "" ? Colors.grey : Colors.greenAccent,
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
                OutlinedButton(
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
                SizedBox(
                  height: 15,
                ),
                OutlinedButton(
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
                SizedBox(
                  height: 15,
                ),
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
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Terms of Service",
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
