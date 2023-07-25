import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'homepage.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  GlobalKey<FormState> formKey=GlobalKey<FormState>();

   TextEditingController namee=TextEditingController();
   TextEditingController pass=TextEditingController(); 

  Future loginform()async{
    try{
       var url=Uri.parse("http://192.168.29.74/adminlogin/loginform.php");

        var res = await http.post(url,

        body:{
          "namee": namee.text,
          "pass": pass.text,
          
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
        title: Text("Login",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: TextFormField(
                        controller:namee,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          label: Text('Name'),
                        ),
                        // keyboardType: TextInputType.number,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: TextFormField(
                        controller:pass,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          label: Text('Password'),
                        ),
                        keyboardType: TextInputType.number,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                      builder: (context) => homepage()),);
              loginform();
            }, 
            child: Text("Login"))
        ],
      ),
    );
  }
}