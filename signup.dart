import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'login.dart';
// import 'login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  String dropdownvalue = 'Doctor';

  var items = [
     'Doctor',
     'Business',
     'Private Company',
     'Others'
  ];
  
  
  GlobalKey<FormState> formKey=GlobalKey<FormState>();


  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController(); 
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController(); 
  
  
   Future insert()async{
    try{
       var url=Uri.parse("http://192.168.29.74/adminlogin/insert.php");

        var res = await http.post(url,

        body:{
          "name": name.text,
          "password": password.text,
          "email": email.text,
          "phone": phone.text,
    }
         );
         
        var response = jsonDecode(res.body);
        
        if(response == "Error"){

        Fluttertoast.showToast(
        msg: "This USER ALREADY EXIST",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }else{
        Fluttertoast.showToast(
        msg: "Registration successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }

        }
      catch(e){
        print(e);
       }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Signup",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: TextFormField(
                          controller:name,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            label: Text('Name'),
                          ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: TextFormField(
                          controller:password,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            label: Text('Password'),
                          ),
                          keyboardType: TextInputType.number,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: TextFormField(
                          controller:email,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            label: Text('Email'),
                          ),
                          keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: TextFormField(
                          controller:phone,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(),
                            label: Text('Phone Number'),
                          ),
                          keyboardType: TextInputType.number,
                ),
              ),
            ),      
            Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.work),
                                      ),
                                      hint: Text('Profession'),
                                      items: <String>[ 'Doctor','Business','Private Company','Others'].map((String value) {
                                      return DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                   }).toList(),
                                  onChanged: (_) {},
                             ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                     minimumSize: const Size.fromHeight(40), 
                   ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => login()),);
                     insert();
                  }, 
                  child: Text("Signup")),
               ),
             ),
            ],
        ),
      ),
    );
  }
}