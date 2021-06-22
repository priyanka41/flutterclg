// //import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sanctum_auth/providers/AuthProvider.dart';
// import 'package:email_validator/email_validator.dart';
// import 'package:sanctum_auth/providers/BaseProvider.dart';


// class RegisterPage extends StatelessWidget {
//   const RegisterPage({Key key}) : super(key: key);

//   pageTitle() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20),
//       child: Text(
//         'Register',
//         style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   pageTitle(),
//                   RegisterForm(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       MaterialButton(
//                         onPressed: () {
//                           Navigator.of(context).pushNamed('/login');
//                         },
//                         child: Text('Go Back'),
//                       )
//                     ],
//                  ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RegisterForm extends StatefulWidget {
//   @override
//   _RegisterFormState createState() => _RegisterFormState();
// }

// class _RegisterFormState extends State<RegisterForm> {
 

//   final _formKey = GlobalKey<FormState>();
//   String _name;
//   String _email;
//   String _password;
//   String _address;
//   String _licenseNo;
//   String _citizenshipNo = '';
//   DateTime _dob;
//   String _phone;
//   String _modelNo;
//   String _liscensePlateNo;
//   DateTime _lastServicingDate;

//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<AuthProvider>(context);

//     nameField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child: TextFormField(
//               keyboardType: TextInputType.name,
//               onSaved: (value) => _name = value,
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'Name is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'Name',
//                   errorText: (auth.state == Status.ERROR) && auth.hasError('name')
//                       ? auth.error('name')[0]
//                       : null),
//             ),
//         );
//     }

//     emailField() {
//       return Container(
//           margin: EdgeInsets.only(bottom: 10),

//              child: TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 onSaved: (value) => _email = value,
//                 validator: (input) {
//                   if (input.isEmpty) {
//                     return 'Email is required.';
//                   }
//                   if (!EmailValidator.validate(input)) {
//                     return 'Enter valid email address.';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     filled: false,
//                     hintText: 'Email',
//                     errorText:
//                         (auth.state == Status.ERROR) && auth.hasError('email')
//                             ? auth.error('email')[0]
//                             : null),
//               ),
            
//           );
//     }

//     passwordField() {
//       return Container(
//           margin: EdgeInsets.only(bottom: 10),
//           child:
//               TextFormField(
//                 decoration: InputDecoration(
//                     hintText: 'Password',
//                     errorText:
//                         (auth.state == Status.ERROR) && auth.hasError('password')
//                             ? auth.error('password')[0]
//                             : null),
//                 onSaved: (value) => _password = value,
//                 validator: (input) {
//                   if (input.isEmpty) {
//                     return 'Password is required';
//                   }
//                   if (input.length < 4) {
//                     return 'Password must be at least 4 character';
//                   }
//                   return null;
//                 },
//               ),
            
          
//           );
//     }

//     addressField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//             child: TextFormField(
//               keyboardType: TextInputType.name,
//               onSaved: (value) => _address = value,
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'Address is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'Address',
//                   errorText:
//                       (auth.state == Status.ERROR) && auth.hasError('address')
//                           ? auth.error('address')[0]
//                           : null),
//             ),
          
        
//       );
//     }

//     liscenseField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child: 
//           TextFormField(
//               keyboardType: TextInputType.name,
//               onSaved: (value) => _licenseNo = value,
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'License no. is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'License no.',
//                   errorText:
//                       (auth.state == Status.ERROR) && auth.hasError('license no')
//                           ? auth.error('license no')[0]
//                           : null),
//             ),
          
        
//       );
//     }

   
//     dobField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child:
//             TextFormField(
//               onSaved: (value) => _dob = DateTime.now(),
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'Dob is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'Dob',
//                   errorText: (auth.state == Status.ERROR) && auth.hasError('Dob')
//                       ? auth.error('Dob')[0]
//                       : null),
//             ),
          
        
//       );
//     }

//     phoneField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child:
//             TextFormField(
//               keyboardType: TextInputType.name,
//               onSaved: (value) => _phone = value,
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'Phone no. is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'Phone no.',
//                   errorText:
//                       (auth.state == Status.ERROR) && auth.hasError('Phone no.')
//                           ? auth.error('Phone no.')[0]
//                           : null),
//             ),
          
        
//       );
//     }

//     modelField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
        
//           child:
//             TextFormField(
//               keyboardType: TextInputType.name,
//               onSaved: (value) => _modelNo = value,
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'Model no. is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'Model no.',
//                   errorText:
//                       (auth.state == Status.ERROR) && auth.hasError('model no.')
//                           ? auth.error('model no.')[0]
//                           : null),
//             ),
          
        
//       );
//     }

//     licenseplateField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child:
//             TextFormField(
//               keyboardType: TextInputType.name,
//               onSaved: (value) => _liscensePlateNo = value,
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'license plate no. is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'license plate no.',
//                   errorText: (auth.state == Status.ERROR) &&
//                           auth.hasError('license plate no.')
//                       ? auth.error('license plate no.')[0]
//                       : null),
//             ),
          
        
//       );
//     }

//     lastserviceField() {
//       return Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child:
//             TextFormField(
//               onSaved: (value) => _lastServicingDate = DateTime.now(),
//               validator: (input) {
//                 if (input.isEmpty) {
//                   return 'Last servicing date is required.';
//                 }
//                 return null;
//               },
//               decoration: InputDecoration(
//                   filled: false,
//                   hintText: 'last servicing date',
//                   errorText: (auth.state == Status.ERROR) &&
//                           auth.hasError('last servicing date')
//                       ? auth.error('name')[0]
//                       : null),
//             ),
          
        
//       );
//     }

    

//     loginButton() {
//       return Center(
//         child: ElevatedButton(
//           onPressed: (auth.state == Status.LOADING)
//               ? null
//               : () async {
//                   if (_formKey.currentState.validate()) {
//                     _formKey.currentState.save();
//                     bool registered =
//                         await auth.register(
//                           _name, 
//                           _email, 
//                           _password, 
//                           _address,
//                           _licenseNo,
//                           _citizenshipNo,
//                           _dob,
//                           _phone,
//                           _modelNo,
//                           _liscensePlateNo,
//                           _lastServicingDate);
//                     if (registered) {
//                       Navigator.of(context).pushNamed('/drive');
//                     } else {
//                       _buildShowErrorDialog(context, auth.message);
//                     }
//                     // Scaffold.of(context)
//                     //     .showSnackBar(SnackBar(content: Text('Processing Data')));
//                   }
//                 },
//           child: (auth.state == Status.LOADING)
//               ? CircularProgressIndicator()
//               : Text('Register'),
//         ),
//       );
//     }

//     return Form(
//       key: _formKey,
//       child: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 40),
//           width: MediaQuery.of(context).size.width,
          
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 if (auth.state == Status.ERROR && auth.message != null)
//                   Container(
//                       width: MediaQuery.of(context).size.width,
//                       padding:
//                           const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                       decoration: BoxDecoration(
//                           color: Colors.red.shade300,
//                           borderRadius: BorderRadius.circular(4)),
//                       child: Text(
//                         '${auth.message}',
//                         style: TextStyle(color: Colors.grey[50]),
//                       )),
//                 nameField(),
//                 emailField(),
//                 passwordField(),
//                 addressField(),
//                 liscenseField(),
              
//                 dobField(),
//                 phoneField(),
//                 modelField(),
//                 licenseplateField(),
//                 lastserviceField(),
                
//                 loginButton(),
//               ],
//             ),
//           ),
//       ),
      
//     );
//   }

//   Future _buildShowErrorDialog(BuildContext context, _message) {
//     return showDialog(
//         builder: (context) {
//           return AlertDialog(
//             title: Text('Error Message'),
//             content: Text(_message),
//             actions: [
//               FlatButton(
//                 child: Text('Close'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//         context: context);
//   }
// }
// 
// 





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









