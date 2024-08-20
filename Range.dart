import 'package:flutter/material.dart';

class RangeConcept extends StatefulWidget {
  @override
  State<RangeConcept> createState() => _RangeConceptState();
}

class _RangeConceptState extends State<RangeConcept> {
  RangeValues values = RangeValues(1, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Range Slider Demo',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSlider(
                  values: values,
                  labels: labels,
                  divisions: 10,
                  min: 1,
                  max: 100,
                  activeColor: Colors.pinkAccent,
                  inactiveColor: Colors.pinkAccent.shade100,
                  onChanged: (newValue) {
                    values = newValue;
                    setState(() {});
                  }),
              SizedBox(
                height: 20,
              ),
              Text(
                '${values.start},${values.end}',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ));
  }
}
