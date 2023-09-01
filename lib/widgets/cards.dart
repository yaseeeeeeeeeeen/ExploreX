import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensePageCard extends StatelessWidget {
  const ExpensePageCard(
      {super.key,
      required this.Number,
      required this.text,
      required this.backColor});
  final Color backColor;
  final String Number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: MediaQuery.sizeOf(context).width / 2.2,
          height: MediaQuery.sizeOf(context).height / 6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: backColor),
          child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Number,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(text,
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500))
                  ])))
    ]);
  }
}
