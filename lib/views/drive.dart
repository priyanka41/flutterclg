


  
  import 'package:flutter/material.dart';
  import 'main_drawer.dart';
  

  void main() => runApp(MyApp());
  class MyApp extends  StatelessWidget {
    @override
    Widget build(BuildContext context) {
       
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          routes:<String , WidgetBuilder>{
          
        },

        home: new DrivePage(),
        
        
      );
    }
  }
 class DrivePage extends StatefulWidget {
   @override
   _DrivePageState createState() => _DrivePageState();
 }
 
 class _DrivePageState extends State<DrivePage> {
   @override
   Widget build(BuildContext context) {
      
     return Scaffold(
         appBar:AppBar(
           backgroundColor: Colors.blueGrey,
           actions:<Widget> [
           IconButton(
                icon: Icon(
                  Icons.settings,
                  color:  Colors.white,
                ),
                onPressed: (){
                  //do something
                },
              ),
             ],
           ),
             drawer: MainDrawer(),
          
           body: SingleChildScrollView(
                        child: Column(
               children:<Widget>[
                  Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                       backgroundImage: AssetImage("assets/grl8.png"),
                       backgroundColor: Colors.blueGrey,
                         radius: 30.0,
                         ),
                        
                     title: Text("Aditi Poudel"),
                      subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Devinagar-Golpark',
                  
                  ),
                  Text('8km, Rs.20',
                   
                   ),
                  
                   Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       FlatButton(onPressed: (){},
                          
                           
                           child: Text("Accept",
                           style: TextStyle(color: Colors.black),
                           ),
                            
                           color: Colors.green,
                           ),
                        

                          FlatButton(onPressed: (){},
                          
                         child: Text("Reject",
                         style: TextStyle(color: Colors.black),
                         ),
                          
                         color: Colors.red,
                         ),
                     ],
                   ),
                  ],

                

              ),
              
              
                   ),
                   
                   
                 ),

                 

                  Card(
                      elevation: 2.0,
                     child:    ListTile(
                       isThreeLine: true,
                       leading: CircleAvatar(
                       backgroundImage: AssetImage("assets/boy1.png"),
                        backgroundColor: Colors.blueGrey,
                         radius: 30.0,
                         ),
                        
                     title:
                      Text("krishna Bhusal"),
                     
                      subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Butwal-Semlar',
                  
                  ),
                  Text('18km, Rs.50',
                   
                   ),

                    Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       FlatButton(onPressed: (){},
                          
                           
                           child: Text("Accept",
                           style: TextStyle(color: Colors.black),
                           ),
                            
                           color: Colors.green,
                           ),
                        

                          FlatButton(onPressed: (){},
                          
                         child: Text("Reject",
                         style: TextStyle(color: Colors.black),
                         ),
                          
                         color: Colors.red,
                         ),
                     ],
                   ),
                    
                  
                ],
              ),   

                       )
                   ),

                   Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/grl7.png"),
                         backgroundColor: Colors.blueGrey,
                         radius: 30.0,
                         ),
                        
                     title: Text("Jyoti Thapa"),
                      subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                 

                  Text('Milanpark-Golpark',
                  
                  ),
                  Text('8km, Rs.20',
                   
                   ),

                    Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       FlatButton(onPressed: (){},
                          
                           
                           child: Text("Accept",
                           style: TextStyle(color: Colors.black),
                           ),
                            
                           color: Colors.green,
                           ),
                        

                          FlatButton(onPressed: (){},
                          
                         child: Text("Reject",
                         style: TextStyle(color: Colors.black),
                         ),
                          
                         color: Colors.red,
                         ),
                     ],
                   ),
                   
                
                
                ],
              ),
              
                   ),

                 ),
                 
 
                Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                         backgroundImage: AssetImage("assets/grl6.png"),
                          backgroundColor: Colors.blueGrey,
                        radius: 30.0,
                         ),
                        
                     title: Text("Kiran Thapa"),
                      subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Devinagar-Golpark',
                  
                  ),
                  Text('8km, Rs.20',
                   
                   ),
                    Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       FlatButton(onPressed: (){},
                          
                           
                           child: Text("Accept",
                           style: TextStyle(color: Colors.black),
                           ),
                            
                           color: Colors.green,
                           ),
                        

                          FlatButton(onPressed: (){},
                          
                         child: Text("Reject",
                         style: TextStyle(color: Colors.black),
                         ),
                          
                         color: Colors.red,
                         ),
                     ],
                   ),
                   
                  
                ],
              ),
                     ),
                ),

                 Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/grl5.png"),
                         backgroundColor: Colors.blueGrey,
                        radius: 30.0,
                         ),
                        
                     title: Text("Rita Neupane"),
                      subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Butwal-Khaireni',
                  
                  ),
                  Text('28km, Rs.60',
                   
                   ),

                    Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       FlatButton(onPressed: (){},
                          
                           
                           child: Text("Accept",
                           style: TextStyle(color: Colors.black),
                           ),
                            
                           color: Colors.green,
                           ),
                        

                          FlatButton(onPressed: (){},
                          
                         child: Text("Reject",
                         style: TextStyle(color: Colors.black),
                         ),
                          
                         color: Colors.red,
                         ),
                     ],
                   ),
                    
                  
                ],
              ),
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
                        
                     title: Text(" janaki poudel"),
                      subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Devinagar-Golpark',
                  
                  ),
                  Text('8km, Rs.20',
                   
                   ),
                   
                     Row(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       FlatButton(onPressed: (){},
                          
                           
                           child: Text("Accept",
                           style: TextStyle(color: Colors.black),
                           ),
                            
                           color: Colors.green,
                           ),
                        

                          FlatButton(onPressed: (){},
                          
                         child: Text("Reject",
                         style: TextStyle(color: Colors.black),
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