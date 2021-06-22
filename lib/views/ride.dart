import 'package:flutter/material.dart';

class ActivePage extends StatefulWidget {
  @override
  _ActivePageState createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
  List <String> status =["complete", "riding"];
  String selectStatus ="complete";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: ListTile(
                title: Text("Active Ride"),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 320,
              width: 300,
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/grl7.png"),
                  backgroundColor: Colors.blueGrey,
                  radius: 30.0,
                ),
                title: Text(" janaki poudel"),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                  children: <Widget>[
                    Text(
                      'Source',
                    ),
                    Text(
                      'Kalikanagar',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                   
                    Text("Destination"),
                    Text(
                      "Golpark",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    
                     Text("Distance"),
                    Text(
                      "10km",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10), 
                    Text("Fare"),
                    Text(
                      "Rs.120",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                     Text("Status"),
                   
                    Text(
                      "Complete",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              child: ListTile(
                title: Text("Requests"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/grl7.png"),
                  backgroundColor: Colors.blueGrey,
                  radius: 30.0,
                ),
                title: Text("Janaki Poudel"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Kalikanagar-Golpark',
                    ),
                    Text(
                      '10km, Rs.120',
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Accept",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.green,
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Reject",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
