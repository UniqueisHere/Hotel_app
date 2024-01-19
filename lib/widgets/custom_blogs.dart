import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class blogsContainer extends StatefulWidget {
  final String image;
  final String firsttext;
  final String secondtext;

  const blogsContainer({
    Key? key,
    required this.image,
    required this.firsttext,
    required this.secondtext,
  }) : super(key: key);

  @override
  State<blogsContainer> createState() => _blogsContainerState();
}

class _blogsContainerState extends State<blogsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(2, 3),
          color: Colors.black.withOpacity(
            0.2,
          ),
        )
      ]),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'June 20, 2022',
                  style: GoogleFonts.ptSansNarrow(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              Text(
                widget.firsttext,
                style: GoogleFonts.ptSansNarrow(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              children: [
                Text(
                  widget.secondtext,
                  style: GoogleFonts.ptSansNarrow(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
