import 'package:flutter/material.dart';

class roundedbtn extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgclr;
  final TextStyle? txtstyle;
  final VoidCallback? func;

  const roundedbtn(
      {required this.btnName, //this is required attribute
      this.icon,
      this.bgclr = Colors.orangeAccent, //default color
      this.txtstyle,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        func!();
      },
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Container(
                  width: 11,
                ),
                Text(
                  btnName,
                  style: txtstyle,
                )
              ],
            )
          : Text(
              btnName,
              style: txtstyle,
            ),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgclr, // Use backgroundColor instead of primary

          shadowColor: bgclr,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(21)))),
    );
  }
}
