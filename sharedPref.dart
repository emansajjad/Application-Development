import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  var nameController=TextEditingController();
  var nameValue="No Value Saved";
  @override
  void initState() {
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference In Flutter",style: Theme.of(context).textTheme.displayLarge,),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              label: Text('name'),
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(29)),
            ),

          ),
        SizedBox(height: 13,),
        ElevatedButton(onPressed: () async{
             var prefs =await SharedPreferences.getInstance();
             var name = nameController.text;
             prefs.setString("name", name);
              setState(() {
                nameValue = name;
              });
        }, child: Text("save name")),
        SizedBox(height: 13,),
        Text(
  "Stored Name: $nameValue", // Display the saved value below the button
  style: Theme.of(context).textTheme.headlineSmall,
),
        ],
      ),
    );

  }
  
  getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName  = prefs.getString("name");
    setState(() {
          nameValue = getName ?? "No Value Saved";

    });
  }
}