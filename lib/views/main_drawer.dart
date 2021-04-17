import 'package:flutter/material.dart';
 
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget> [
           Container(
             width:double.infinity,
             padding: EdgeInsets.all(20),
             color: Theme.of(context).splashColor,
             child: Center(
               child:Column(
                 children: <Widget>[
                     Container(
                      
                       height:100,
                       width:100,
                       margin: EdgeInsets.only(
                         top:30,
                         bottom: 10,
                       ),
                       decoration:BoxDecoration(
                         shape:BoxShape.circle,
                         image:DecorationImage(
                           image: AssetImage("assets/boy2.png"),
                         
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                     Text("Raju" , style:TextStyle(fontSize:22, 
                         color: Colors.black,  
                             ),
                      ),

                      Text("Raju@gmail.com" , style:TextStyle( 
                         color: Colors.black,  
                             ),
                      ),
                 ],
                 ),
               ),
           ),
           ListTile(
             leading:Icon(Icons.location_city),
             title: Text("City",
              style: TextStyle(fontSize: 18),
             ),
             onTap:(){
             
             },
           ),

           ListTile(
             leading:Icon(Icons.help),
             title: Text("Help",
              style: TextStyle(fontSize: 18),
             ),
             onTap: null,
           ),

           ListTile(
             leading:Icon(Icons.support),
             title: Text("Support",
              style: TextStyle(fontSize: 18),
             ),
             onTap: null,
           ),

         
      ],
      ),
    );
  }
}