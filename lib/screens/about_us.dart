import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app/screens/home_screen.dart';
import 'package:hotel_app/screens/services.dart';

class aboutUs extends StatelessWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('About Us'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/about_us.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: 380,
            width: 350,
            color: Colors.white12.withOpacity(1),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Wrap(
                    children: [
                      Text(
                        'WELCOME TO THE XYZ HOTEL, DAMAK',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Hotel XYZ is located in Damak, a beautiful city where you can find everything beautiful. We provide you with everything you desire for. Our hotel is ranked one ofthe top hotels in Province no 1 according to Health and Sanitary Department based on servey done by Nepal Government",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const servicesPage();
                              },
                            ),
                          );
                        },
                        child: const Text('Book Room Now'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeScreen();
                              },
                            ),
                          );
                        },
                        child: const Text('Back To Home Page'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
