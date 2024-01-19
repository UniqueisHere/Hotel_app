import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class startDate extends StatefulWidget {
  const startDate({Key? key}) : super(key: key);

  @override
  State<startDate> createState() => _startDateState();
}

class _startDateState extends State<startDate> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2022, 07, 01),
    end: DateTime(2023, 01, 01),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final difference = dateRange.duration;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Book a Room Now',
              style: GoogleFonts.sansita(
                fontSize: 45,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                    onPressed: pickDateRange,
                    child: Text(DateFormat('yyyy/MM/dd').format(start)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                    onPressed: pickDateRange,
                    child: Text(DateFormat('yyyy/MM/dd').format(end)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Text(
              'Total Days: ${difference.inDays}',
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022),
      lastDate: DateTime(2023),
      initialDateRange: dateRange,
    );

    if (newDateRange == null) return;

    setState(() {
      dateRange = newDateRange;
    });
  }
}
