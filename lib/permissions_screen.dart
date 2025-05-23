import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key, required this.title});
  final String title;

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child: Image(image: AssetImage('assets/locations.png')),
            ),
            SizedBox(height: 30),

            Text(
              'Allow Your permissions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                'we will need your location for better experience',
              ),
            ),
            SizedBox(height: 100),

            Text(""),
            InkWell(
              onTap: () {},
              child: Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.purple.shade100],
                  ),

                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Sure, I d't Like that",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            TextButton(onPressed: (){}, child: Text("Not now"))
          ],
        ),
      ),
    );
  }
}
