import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/utils/functions/number_converter.dart';

import '../../utils/styles/colors.dart';

class MyText extends StatelessWidget {
  final text;
  final size;
  final color;
  final textAlign;
  final fontWeight;
  int? maxLinesNumber;
  bool showEllipsis;

  MyText(
      {Key? key,
      this.maxLinesNumber,
      required this.text,
      required this.size,
      this.color,
      this.textAlign,
      this.fontWeight,
      this.showEllipsis = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLinesNumber,
      overflow: showEllipsis ? TextOverflow.ellipsis : null,
      style: GoogleFonts.poppins(
        fontSize: convertNumber<double>(size),
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color ?? whiteColor,
      ),
    );
  }
}
