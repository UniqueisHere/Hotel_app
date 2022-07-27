import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app/screens/about_us.dart';
import 'package:hotel_app/screens/blog.dart';
import 'package:hotel_app/screens/contact_us.dart';
import 'package:hotel_app/screens/home_screen.dart';
import 'package:hotel_app/screens/services.dart';

class customDrawer extends StatefulWidget {
  const customDrawer({
    Key? key,
    required this.scaffold_key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffold_key;

  @override
  State<customDrawer> createState() => _customDrawerState();
}

class _customDrawerState extends State<customDrawer> {
  bool isHover = false;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.greenAccent,
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              tileColor: Colors.white38,
              title: Text(
                'Home',
                style: GoogleFonts.blackAndWhitePicture(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 24,
                ),
              ),
              onTap: () {
                widget.scaffold_key.currentState!.closeDrawer();
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'About Us',
                style: GoogleFonts.blackAndWhitePicture(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 24,
                ),
              ),
              onTap: () {
                widget.scaffold_key.currentState!.closeDrawer();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return aboutUs();
                    },
                  ),
                );
              },
              onLongPress: () {
                setState(() {
                  color = Colors.black12;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.room_service),
              title: Text(
                "Our Services's",
                style: GoogleFonts.blackAndWhitePicture(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 24,
                ),
              ),
              onTap: () {
                widget.scaffold_key.currentState!.closeDrawer();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return servicesPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(
                'Blog',
                style: GoogleFonts.blackAndWhitePicture(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 24,
                ),
              ),
              onTap: () {
                widget.scaffold_key.currentState!.closeDrawer();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return blogPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text(
                'Contact Us',
                style: GoogleFonts.blackAndWhitePicture(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 24,
                ),
              ),
              onTap: () {
                widget.scaffold_key.currentState!.closeDrawer();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return contactUs();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.book_online_rounded),
              title: Text(
                'Book Online',
                style: GoogleFonts.blackAndWhitePicture(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 24,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
