import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class contactUs extends StatelessWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 550,
          width: 350,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/images/hotel_front.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  children: [
                    Text(
                      'THE XYZ HOTEL, DAMAK',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: [
                  Text(
                    'Email: xyz@gmail.com',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Wrap(
                children: [
                  Text(
                    'Telephone: +977 9800000000',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Wrap(
                children: [
                  Text(
                    'Website: www.xyz.com',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.purple,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
