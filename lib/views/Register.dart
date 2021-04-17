



import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
   
   String _name;
   String _email;
   String _password;
   String _phone;
   String _city;
   String _dob;
   String _image;
  
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
   String groupValue = "Female";

  Widget _buildName(){
    
      return TextFormField(
        decoration:InputDecoration(
          labelText:"Name",
        
        border: OutlineInputBorder(borderSide:BorderSide(color:Colors.teal,
         ))
          ),
        maxLength: 30,
       
         validator: (input) {
              if (input.isEmpty) {
                return 'Name is required';
              }
             
              return null;
            },
        
        
        onSaved: (String value){
          _name= value;
        },
      );
                  
  }
  
  Widget  _buildEmail(){
    
      return TextFormField(
        decoration:InputDecoration(
           
          labelText:"Email",
          
          border: OutlineInputBorder(borderSide:BorderSide(color:Colors.teal))
          ),
        validator: (String value){
          if(value.isEmpty){
            return 'email is required';
          }
            if (!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-z0-9+_.-]+.[a-z]").hasMatch(value)) {
                   return "please enter valid email";
                   }
                   return null;
        },
        onSaved: (String value){
          _email= value;
        },
      );
      
  }
 

  Widget _buildPhone(){
    
     return TextFormField(
        decoration:InputDecoration(
          labelText:"Phone",
        
          border: OutlineInputBorder(borderSide:BorderSide(color:Colors.teal))
          ),
      
         validator: (input) {
              if (input.isEmpty) {
                return 'phone no. is required';
              }
             
              return null;
            },
        onSaved: (String value){
          _phone= value;
        },
      );
  }
   Widget _buildPassword(){
     return TextFormField(
        decoration:InputDecoration(
          labelText:"Pasword",
        
          border: OutlineInputBorder(borderSide:BorderSide(color:Colors.teal))
          ),
        keyboardType: TextInputType.visiblePassword,

         validator: (input) {
              if (input.isEmpty) {
                return 'Password is required';
              }
              if (input.length < 4) {
                return 'Password must be at least 4 character';
              }
              return null;
            },
        onSaved: (String value){
          _password= value;
        },
      );
    }
      Widget _buildCity(){
     return TextFormField(
        decoration:InputDecoration(
          labelText:"City",
          
          border: OutlineInputBorder(borderSide:BorderSide(color:Colors.teal))
          ),
       
         validator: (input) {
              if (input.isEmpty) {
                return 'city name is required';
              }
             
              return null;
            },
        onSaved: (String value){
          _city= value;
        },
      );
  }

  

   Widget _buildDob(){
     return TextFormField(
        decoration:InputDecoration(
          labelText:"Date Of Birth",
          
          border: OutlineInputBorder(borderSide:BorderSide(color:Colors.teal))
          ),
        
        
         validator: (input) {
              if (input.isEmpty) {
                return 'DOB  is required';
              }
             
              return null;
            },
        onSaved: (String value){
          _dob= value;
        },
      );
  }

  Widget _buildImage(){
      
      return Center(
        child: Stack(
          children:<Widget>[
            // CircleAvatar(
            
            //   radius:80,
            //   backgroundImage: AssetImage("assets/f5pes.jpg"),
            // ),
            
               
                  
                   Card(
                     // elevation: 2.0,
                     child: ListTile(
                       leading: Text("LISCENCE PHOTO:" ),
                        
                     title: CircleAvatar(
                      // backgroundImage: AssetImage("assets/f5pes.jpg"), 
                      backgroundColor: Colors.black,
                       radius: 70,
                         ),
            
                   ),
                 ),

            Positioned(
              bottom: 20,
              right: 50,
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                     builder: ((builder)=>_buildButtomsheet()));
                },
                child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 28,
            ),
              ),
            ),
          ],
        ),
      );
  }
  Widget _buildButtomsheet(){
    return Container(
      height:100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal:20,
        vertical:20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "choose photo",
            style: TextStyle(
              fontSize: 20,
              ),
          ),
          SizedBox(
            height:20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: (){

                },
                label: Text("camera"),
              ),
              FlatButton.icon(
                 icon: Icon(Icons.image),
                onPressed: (){

                },
                 label: Text("gallery"),
                  )
            ],
            ),
        ],
        ),
    );
  }
    @override
   Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(title: Text("Register"),),
     body: SingleChildScrollView(
            child: Container(
         margin:EdgeInsets.all(24) ,
         child: Form(
           key: _formkey,
           child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             _buildName(),
              SizedBox(
                height:20,
              ),
              _buildEmail(),
               SizedBox(
                height:20,
              ),
              _buildPassword(),
               SizedBox(
                height:20,
              ),
              _buildPhone(),
               SizedBox(
                height:20,
              ),
              _buildCity(),
               SizedBox(
                height:20,
              ),
              
              _buildDob(),
               SizedBox(
                height:20,
              ),

              _buildImage(),
              SizedBox(
                height:20,
              ),

            
             
             

              SizedBox(
                height:100
              ),
              RaisedButton(
                child: Text(
                  "SUBMIT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize:26,
                  
                    ),
                  ),
                onPressed: (){
                   if(!_formkey.currentState.validate()){
                  // return;
                     Navigator.of(context).pushReplacementNamed('/drive');
                     if(_formkey.currentState.validate()){
                          return;
                       
                        }else{
                          print("unsucessfull");
                        }
                    
                  }
                  _formkey.currentState.save();
                  print(_name);
                  print(_email);
                  print(_password);
                  print(_phone);
                  print(_city);
              
                  print(_dob);

                  print(_image);

                  
                },
                )

           ],
         )

         ,),
         ),
     ),
     );
   }
}
