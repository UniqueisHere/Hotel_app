import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app/widgets/custom_drawer.dart';
import 'package:hotel_app/widgets/date_picker.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyy = GlobalKey<ScaffoldState>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyy,
      drawer: customDrawer(scaffold_key: keyy),
      appBar: AppBar(
        title: Text(
          'Our Hotel',
          style: GoogleFonts.blackAndWhitePicture(
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 640,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/home_screen.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
              width: 300,
              child: startDate(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
