//import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeD extends StatefulWidget {
  @override
  State<TimeD> createState() => _TimeD();
}

class _TimeD extends State<TimeD> {
  DateTime? datePicked;
  TimeOfDay? timePicked;
  @override
  Widget build(BuildContext context) {
    //var time = DateTime.now();
    // When we press the button, it will re-build the app and get the new time

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen",
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                backgroundColor: Colors.transparent)),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date",
              style: TextStyle(fontSize: 28),
            ),
            Container(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime.now());
                  if (selectedDate != null) {
                    //When a date is selected, the setState() method is called to update the UI, which triggers a rebuild of the widget.
                    setState(() {
                      datePicked = selectedDate;
                    });
                  }
                },
                child: Text(
                  "Show",
                  style: TextStyle(fontSize: 28),
                )),
            Container(
              height: 25,
            ),
            if (datePicked != null)
              Text(
                "Selected Date: ${DateFormat('MMMM d, yyyy').format(datePicked!)}",
                style: TextStyle(fontSize: 28),
              ),
            Container(
              height: 20,
            ),
            Text(
              "Select Time",
              style: TextStyle(fontSize: 28),
            ),
            Container(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? selectedTime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());

                  if (selectedTime != null) {
                    setState(() {
                      timePicked = selectedTime;
                    });
                  }
                },
                child: Text(
                  "Show",
                  style: TextStyle(fontSize: 28),
                )),
            Container(
              height: 20,
            ),
            if (timePicked != null)
              Text(
                'Selected Time: ${timePicked!.format(context)}',
                style: TextStyle(fontSize: 28),
              ),
          ],
        ),
      ),
    );
  }
}
