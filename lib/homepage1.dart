import 'package:flutter/material.dart';

import 'homepage2.dart';
class SideBar extends StatefulWidget {
  final Size size;
  const SideBar({Key? key, required this.size}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool swITCHOn=false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width*0.20,
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Row(
            children: [

              Icon(Icons.flight_takeoff,size: 35,color: Colors.blueAccent),
              Expanded(
                child: ListTile(
                  title:  Text(Constans.app_name),
                  subtitle:  Text(Constans.app_name1),
                ),
              ),
            ],),
          SizedBox(height: 25,),

          ListTile(
              title: Text(Constans.app_name2,),
              leading:  Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xff0068FF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 14,
                        color: Color(0xffCFDBE9),
                        offset: Offset(
                          5,
                          5,
                        ),
                      ),
                      BoxShadow(
                        blurRadius: 14,
                        color: Color(0xffCFDBE9),
                        offset: Offset(
                          -5,
                          -5,
                        ),
                      ),
                    ],
                    gradient: LinearGradient(
                      stops: [0, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors:
                      [Color(0xff221185), Color(0xff29149e)],
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                          5,
                        )
                    )
                ),
                child: Icon(Icons.dashboard,size: 30,color: Colors.white,),
              ),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.flight_takeoff),
            title: Text("Deal"),),
          SizedBox(height: 3,),
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text("Client"),),
          SizedBox(height: 3,),
          ListTile(
            leading: Icon(Icons.manage_search_rounded),
            title: Text("Massage"),),
          SizedBox(height: 3,),
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text("Client"),),
          SizedBox(height: 3,),
          ListTile(
            leading: Icon(Icons.manage_search_rounded),
            title: Text("Massage"),),
          SizedBox(height: 3,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),),

          SizedBox(height: 10,),
          Divider(height: 2,),
          SizedBox(height: 3,),
          ListTile(
            title: Text("Dark Mode"),
            leading: Icon(Icons.dark_mode),

            trailing: Switch(value: swITCHOn, onChanged: (value){
              setState(() {
                swITCHOn=!swITCHOn;
              });
            }),
          ),
          SizedBox(height: 10,),

          Container(
            height: 200,
            width: widget.size.width*0.20,
            decoration: BoxDecoration(
                color: Colors.indigo
            ),
            child: Column(
              children: [
                Icon(Icons.flight,size: 50,color: Colors.white),
                SizedBox(height: 20,),
                Text("Updating your plan for premium!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,)),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Upgrate Done"),
                        actions: [TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Done")),],
                      );
                    });
                  });
                }, child: Text("Upgrate Now"))

              ],
            ),
          )

        ],
      ),
    );  }
}




Widget build_sidevar(Size size, BuildContext context) {
  return SizedBox(
    width: size.width*0.20,
    child: ListView(
      primary: false,
      shrinkWrap: true,
      children: [
        Row(
          children: [

            Icon(Icons.flight_takeoff,size: 35,color: Colors.blueAccent),
            Expanded(
              child: ListTile(
                title:  Text(Constans.app_name),
                subtitle:  Text(Constans.app_name1),
              ),
            ),
          ],),
        SizedBox(height: 25,),

        ListTile(
            title: Text(Constans.app_name2,),
            leading:  Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Color(0xff0068FF),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 14,
                      color: Color(0xffCFDBE9),
                      offset: Offset(
                        5,
                        5,
                      ),
                    ),
                    BoxShadow(
                      blurRadius: 14,
                      color: Color(0xffCFDBE9),
                      offset: Offset(
                        -5,
                        -5,
                      ),
                    ),
                  ],
                  gradient: LinearGradient(
                    stops: [0, 1],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:
                    [Color(0xff221185), Color(0xff29149e)],
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(
                        5,
                      )
                  )
              ),
              child: Icon(Icons.dashboard,size: 30,color: Colors.white,),
            )
        ),
        SizedBox(height: 10,),
        ListTile(
          leading: Icon(Icons.flight_takeoff),
          title: Text("Deal"),),
        SizedBox(height: 3,),
        ListTile(
          leading: Icon(Icons.perm_identity),
          title: Text("Client"),),
        SizedBox(height: 3,),
        ListTile(
          leading: Icon(Icons.manage_search_rounded),
          title: Text("Massage"),),
        SizedBox(height: 3,),
        ListTile(
          leading: Icon(Icons.perm_identity),
          title: Text("Client"),),
        SizedBox(height: 3,),
        ListTile(
          leading: Icon(Icons.manage_search_rounded),
          title: Text("Massage"),),
        SizedBox(height: 3,),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Setting"),),

        SizedBox(height: 10,),
        Divider(height: 2,),
        SizedBox(height: 3,),
        ListTile(
          title: Text("Dark Mode"),
          leading: Icon(Icons.dark_mode),

          trailing: Switch(value: swITCHOn, onChanged: (value){
            setState(() {
              swITCHOn=!swITCHOn;
            });
          }),
        ),
        SizedBox(height: 10,),

        Container(
          height: 200,
          width: size.width*0.20,
          decoration: BoxDecoration(
              color: Colors.indigo
          ),
          child: Column(
            children: [
              Icon(Icons.flight,size: 50,color: Colors.white),
              SizedBox(height: 20,),
              Text("Updating your plan for premium!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,)),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                setState(() {
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Upgrate Done"),
                      actions: [TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Done")),],
                    );
                  });
                });
              }, child: Text("Upgrate Now"))

            ],
          ),
        )

      ],
    ),
  );
}