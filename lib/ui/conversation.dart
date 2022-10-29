import 'package:flutter/material.dart';
import 'package:guruji/ui/guidance.dart';
import 'package:guruji/ui/homepage.dart';
import 'package:guruji/ui/profile.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  int _currentSelected = 2;

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
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/live guruji/no order.png",
              height: 200,
              width: 200,
            ),
            Text("No Conversation")
          ],
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
