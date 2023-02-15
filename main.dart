import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const Tugas2());
}

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          title: Text("My Homepage"),
          actions: [Icon(Icons.airplanemode_on), Icon(Icons.access_time_filled_outlined)],
          backgroundColor: Color.fromARGB(255, 26, 80, 186),
          leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),

        body: ListView(
          children: [
            ListTile(
              title: Text("FauzanRama11"),
              subtitle: Text("Your account"),
              leading: CircleAvatar(),
            ),

            Container(height: 50,width: 300, 
            color: Color.fromARGB(255, 26, 80, 186), 
            padding: EdgeInsets.fromLTRB(10,15,10,15),
            child: Text("Calender", 
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),

            Container(
              height: 300,width: 300,
              child: Image(image: NetworkImage('https://png.pngtree.com/png-clipart/20220918/original/pngtree-kalender-februari-2023-png-image_8623139.png'), fit: BoxFit.cover,)
            ),

            Container(height: 50,width: 300, 
            color: Color.fromARGB(255, 26, 80, 186), 
            padding: EdgeInsets.fromLTRB(10,15,10,15),
            child: Text("Today's activities", 
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),

            Container(
              height: 300,width: 300,
              ),

            Container(height: 50,width: 300, 
            color: Color.fromARGB(255, 26, 80, 186), 
            padding: EdgeInsets.fromLTRB(10,15,10,15),
            child: Text(DateFormat.yMMMMEEEEd().format(DateTime.now()), 
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),

            
          ],
          
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}, color: Color.fromARGB(255, 26, 80, 186)),
              IconButton(icon: Icon(Icons.accessibility), onPressed: () {}, color: Color.fromARGB(255, 26, 80, 186),),
              Spacer(),
              IconButton(icon: Icon(Icons.history), onPressed: () {}, color: Color.fromARGB(255, 26, 80, 186),),
              IconButton(icon: Icon(Icons.person), onPressed: () {}, color: Color.fromARGB(255, 26, 80, 186),),
            ],
          ),
      ),
      floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ) 
    );
  }
}