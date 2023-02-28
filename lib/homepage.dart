import 'package:flutter/material.dart';
import 'package:web_base_app/homepage2.dart';

import 'homepage1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool swITCHOn=false;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(

backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [

            build_sidevar(size, context),
          ],
        ),
      ),
    );
  }


}

