import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formkey = GlobalKey<FormState>();
  var  password=TextEditingController();
  var  confirmpassword=TextEditingController();

  String? validateMobile(String? value) {
    String pattern = r'(^[0-9]$)';
    RegExp regex = new RegExp(pattern);
    if (value!.isEmpty) {
      return "Phone number must not be empty";
    } else if (value.length != 10) {
      return 'Phone number must be of 10 digit';
    }else if(!regex.hasMatch(value)){
      return 'Invalid phone number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Signup App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        labelText: "Name"),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Name must not be empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        labelText: "Email"),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Email must not be empty";
                      } else {
                        bool c = EmailValidator.validate(value);
                        if (!c) {
                          return "Invalid Email";
                        }
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        labelText: "Phone"),
                    validator: validateMobile,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    obscureText: true,
                    controller: password,
                    decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        labelText: "Password"),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: confirmpassword,
                    decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        labelText: "Confirm Password"),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Confirm Password must not be empty";
                      }
                      else if(value!=password){
                        return "Password mismatch";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print("validated");
                        }
                      },
                      child: Text("Sign Up"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
