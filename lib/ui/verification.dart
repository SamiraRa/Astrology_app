import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:guruji/ui/homepage.dart';
import 'package:guruji/ui/wallet.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;
  var code = "";
  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: focusedBorderColor),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Verification Code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("We've sent a 6 digit code to your phone number"),
            SizedBox(
              height: 5,
            ),
            Text("phone Number"),
            SizedBox(
              height: 30,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Directionality(
                    // Specify direction if desired
                    textDirection: TextDirection.ltr,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Pinput(
                        controller: pinController,
                        focusNode: focusNode,
                        length: 6,

                        defaultPinTheme: defaultPinTheme,

                        onChanged: (value) {
                          code = value;
                        },
                        // cursor: Column(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     Container(
                        //       margin: const EdgeInsets.only(bottom: 9),
                        //       width: 22,
                        //       height: 1,
                        //       color: focusedBorderColor,
                        //     ),
                        //   ],
                        // ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.redAccent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(screenWidth / 1.8, 40)),
                    onPressed: () async {
                      print(WalletScreen.verify);
                      // formKey.currentState!.validate();
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: WalletScreen.verify,
                                smsCode: code);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/homepage", (route) => false);
                      } catch (e) {
                        print("vul ashbe ${e}");
                      }
                    },
                    child: const Text('Continue'),
                  ),
                ],
              ),
            )
            // Pinput()
          ],
        ),
      ),
    );
  }
}
